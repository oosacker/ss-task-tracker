<?php

namespace Natsuki\Task_Tracker\Controllers;

Use Natsuki\Task_Tracker\Models\Task;
use SilverStripe\Control\Controller;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Control\HTTPResponse;

class TaskController extends Controller 
{
    private static $allowed_actions = [
        'index',
        'create',
        'delete',
        'update',
    ];

    public function index(HTTPRequest $request) 
    {
        if (!$request->isGET()) {
          return $this->json(['error' => 'Method not allowed'], 405);
      }

      $id = $request->param('ID');
      if (empty($id)) {
          $tasks = Task::get()->toArray();
          return $this->json($tasks);
      }

      $task = Task::get_by_id($id);
      if (!$task) {
          return $this->json(['error' => 'Task does not exist'], 404);
      }
      return $this->json($task);
    }

    public function json($data, $status = 200, $forceObject = false)
    {
        $flags = null;

        if ($forceObject) {
            $flags = JSON_FORCE_OBJECT;
        }

        $response = (new HTTPResponse())
            ->setStatusCode($status)
            ->setBody(json_encode($data, $flags))
            ->addHeader('Content-Type', 'application/json');

        return $response;
    }

}
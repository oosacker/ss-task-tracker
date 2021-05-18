<?php

namespace Natsuki\Task_Tracker\Pages;

use PageController;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\ArrayList;
use SilverStripe\View\ArrayData;
use SilverStripe\Security\Security;
use Natsuki\Task_Tracker\Models\Task;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\DatetimeField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FieldGroup;
use SilverStripe\Forms\FieldList;

class TasksPageController extends PageController 
{
  private static $allowed_actions = [
    'update'
  ];
  
  public function index(HTTPRequest $request)
  {
      return [];
  }

  public function update(HTTPRequest $request) 
  {
      // if (!$request->isPOST()) {
      //     return $this->json(['error' => 'Method not allowed'], 405);
      // }

      $postData = $request->requestVars();

      var_dump($postData);
      die();
  }

  public function getUserTasks() 
  {
    if( $member = Security::getCurrentUser() ) {

      $allTasks = Task::get()->filter(['UserID' => $member->ID]);

      return $allTasks;
    } 
    else {
        user_error('Not logged in');
    }
  }

}
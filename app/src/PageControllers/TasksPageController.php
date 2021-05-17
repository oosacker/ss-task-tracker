<?php

namespace Natsuki\Task_Tracker\Pages;

use PageController;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\ArrayList;
use SilverStripe\View\ArrayData;
use SilverStripe\Security\Security;
use Natsuki\Task_Tracker\Models\Task;

class TasksPageController extends PageController 
{
  public function index(HTTPRequest $request)
  {
      return [];
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
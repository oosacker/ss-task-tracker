<?php

namespace Natsuki\Task_Tracker\Pages;

use PageController;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\ArrayList;
use SilverStripe\View\ArrayData;
use SilverStripe\Security\Authenticator;

class TasksPageController extends PageController 
{
  public function index(HTTPRequest $request)
  {
      return [];
  }
}
<?php

namespace Natsuki\Task_Tracker\Admins;

Use Natsuki\Task_Tracker\Models\Task;
use SilverStripe\Admin\ModelAdmin;

class TaskAdmin extends ModelAdmin
{
    private static $managed_models = [
        Task::class,
    ];

    private static $menu_title = 'Tasks';

    private static $url_segment = 'tasks';

}

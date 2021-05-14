<?php

namespace Natsuki\Task_Tracker\Models;

use SilverStripe\ORM\DataObject;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\Security\Member;
use SilverStripe\Security\Permission;
use JsonSerializable;

class Task extends DataObject implements JsonSerializable
{
    private static $singular_name = 'Task';

    public function i18n_singular_name()
    {
        return _t(self::class.'.SINGULAR_NAME', 'Task');
    }
    
    private static $plural_name = 'Tasks';

    public function i18n_plural_name()
    {
        return _t(self::class.'.PLURAL_NAME', 'Tasks');
    }
    
    private static $table_name = 'Task';
    
    private static $api_access = false;
    
    
    private static $db = [
        'Text' => 'Varchar',
        'DateTime' => 'Datetime',
        'Reminder' => 'Boolean'
    ];
    
    private static $has_one = [
        'User' => Member::class
    ];

    private static $belongs_to = [
        'User' => Member::class
    ];
    
    private static $summary_fields = [
        'Text' => 'Description',
        'DateTime' => 'Date and time',
        'Reminder' => 'Reminders',
        'User.Email' => 'Email',
        'User.FirstName' => 'First name',
        'User.Surname' => 'Last name',
    ];

    public function jsonSerialize()
    {
        return [
            'ID' => $this->ID,
            'Text' => $this->Text,
            'DateTime' => $this->DateTime,
            'Reminder' => $this->Reminder,
            'Email' => $this->User()->Email,
        ];
    }

}
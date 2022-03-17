<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::truncate();
        User::truncate();

        $adminRole = Role::create (['name'=>'Admin']);
        $userRole = Role::create (['name'=>'User']);
        

        $admin = new User;

        $admin->name = 'Dougla lopez';

        $admin->email = 'douglas.lopez@gers.com.co';

        $admin->password = bcrypt('123456789');

        $admin->save();

        $admin->assignRole($adminRole);

        $admin = new User;

        $admin->name = 'Andres espinosa';

        $admin->email = 'andres.espinosa@gers.com.co';

        $admin->password = bcrypt('123456789');

        $admin->save();

        $admin->assignRole($adminRole);

        $user = new User;

        $user->name = 'nuevo';

        $user->email = 'prueba@gmail.com';

        $user->password = bcrypt('123456');

        $user->save();

        $user->assignRole($userRole);

        
        

    }
}

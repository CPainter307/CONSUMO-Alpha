if (global.fightStarted) {
	if (currentHealth <= 0) {
		instance_destroy();
	}

	//move 1
	if (((timer_m1) * (baseSpeed/100)) >= move_1[0]) {
		CreateEnemyHitbox(0, move_1[1]);
		timer_m1 = 0;
	}

	//move 2
	if(((timer_m2) * (baseSpeed/100)) >= move_2[0]) {
		CreateEnemyHitbox(1, move_2[1]);
		timer_m2 = 0;
	}

	timer_m2++;
	timer_m1++;

	if (healthThisFrame > currentHealth)
	{
		flash = 3;
	}

	healthThisFrame = currentHealth;
}
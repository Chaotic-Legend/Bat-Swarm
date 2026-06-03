[![Static Badge](https://img.shields.io/badge/Godot%20Engine-4.6.3-blue?style=plastic&logo=godotengine)](https://godotengine.org/) ![GitHub top language](https://img.shields.io/github/languages/top/Chaotic-Legend/Bat-Swarm?logo=godotengine)

# Bat Swarm | Project Touchstone #
[Your First 3D GAME From Zero in Godot 4 **Survivor Arena FPS**](https://www.youtube.com/watch?v=NJJNWGD25rg&t) by [GDQuest](https://www.youtube.com/@Gdquest) ([Discord](discord.gg/CHYVgar))

This project is a beginner-friendly walkthrough for building a stylized 3D arena survival shooter in the Godot Engine, focusing on the core systems required for responsive first-person movement and fast-paced enemy combat encounters. It introduces and applies essential concepts, including node-based scene organization, physics-based character movement, mouse-controlled camera handling, enemy spawning systems, shooting mechanics, collision detection, combat feedback, score tracking, UI implementation, and game over and restart functionality. This tutorial also demonstrates important gameplay features, including implementing scalable enemy wave progression, managing enemy pursuit behavior and spawn timing, integrating audio and shader-driven visual effects for combat interactions, and structuring overall gameplay flow to create a cohesive and polished survival experience. The result is a fully playable arena shooter where players must survive increasingly difficult enemy waves while maintaining precise movement, combat awareness, and shooting accuracy to achieve higher scores and longer survival times. It also served as the foundation for completing a structured implementation task on Feather, with the project integrated into the broader development workflow supporting the Handshake AI Project Touchstone initiative.

# Assets #
[Bat Swarm Assets](https://www.gdquest.com/library/first_3d_game_godot4_arena_fps/) by [GDQuest](https://www.gdquest.com/) ([Twitter](https://x.com/NathanGDQuest))

![Sprite Asset](icon.png)

# Create a Godot task #
<ins> What application is this task for? </ins>
<br>
Godot

### **Task prompt** ###
First, enter the **task prompt** and any relevant reference files (e.g., docs, diagrams, sketches, photos, schematics).

Tasks should sound like what a manager might give a skilled but junior employee: high-level guidance with some leeway on executional details, but with very clear success metrics. What a good outcome looks like must be very clear and easy to understand.

Please include any relevant **reference files** (e.g., docs, diagrams, sketches, photos, schematics) needed to complete this task.

Reminder on the difference between reference and starting state files:
- **Reference files**: anything the Employee should look at or read while completing the project that does not need to be directly loaded into the application (*'please make something that looks like XYZ image'*)
- **Starting state files (upload below)**: anything that the Employee would need to load into their workspace to complete the task (*'here is the existing file you should adapt'*)

<ins> Task prompt (ask the Employee) </ins>
<br>


<ins> Which of the following best fits this task? </ins>
<br>
Task from scratch

<ins> How long would you anticipate an 'Employee' to complete this task? (in hours) </ins>
<br>
5

### **Starting state** ###
Please describe and include below any information about the starting state of this project:
- Existing work to be modified
- Other assets or other inputs the Employee needs to bring to be able to complete this task

Reminder on the difference between the starting state and the reference files:
- **Starting state files**: anything that the Employee would need to load into their workspace to complete the task ('*here is the existing file you should adapt*')
- **Reference files (upload above)**: anything the Employee should look at or read while completing the project that does not need to be directly loaded into the application ('*please make something that looks like XYZ image*')

<ins> Starting state description </ins>
<br>
The starting state is a clean 3D project containing the foundational visual, audio, and shader resources required to develop an arena-based survival shooter experience. The included assets support the creation of a stylized combat environment focused on surviving continuous waves of hostile enemies within an open gameplay arena. These resources include a temporary level scene with a checkerboard environment texture and animated sky shader, modular enemy assets such as animated bat creature models and enemy spawn point models with custom shader effects, projectile and firearm models with associated palette textures and projectile shaders, smoke puff explosion scenes and volumetric smoke materials for combat feedback, player interface assets including a targeting reticle, background music, and multiple sound effects for weapon firing, enemy damage, enemy defeat, player death, and visual effect playback. The Employee is responsible for designing and implementing the complete gameplay experience from the ground up using the provided resources, including all required scenes, nodes, scripts, enemy spawning systems, player movement and camera controls, shooting and projectile behavior, enemy behavior and collision systems, visual and audio effect integration, scoring systems, pause and restart functionality, and all user interface elements. The Employee must create and integrate all programming, combat interactions, scene organization, animation behavior, and game flow systems necessary to transform the supplied assets into a fully playable 3D survival shooter experience.

### **Overall context** ###
Finally, include context on this task and why it is realistic and representative of real-life work:
- Why is this a reasonable task for a manager to ask a junior-level employee to do?
- Is there a larger project it might be a part of?

<ins> Task context </ins>
<br>
This task is a realistic and appropriate assignment for a junior-level developer, as it focuses on implementing the core systems of a 3D arena survival shooter using a provided collection of visual, audio, and shader-based resources. It involves building foundational gameplay mechanics, including first-person player movement and camera controls, projectile and shooting systems, enemy spawning and pursuit behavior, combat and damage handling, score and survival tracking, pause and restart functionality, visual effect playback, and user interface management. The work requires applying essential programming, gameplay architecture, scene organization, and debugging skills to transform a clean project structure and supporting assets into a fully interactive combat experience while organizing reusable scenes, scripts, shaders, and gameplay systems within the engine. This type of assignment reflects common real-world development practices, where junior developers are responsible for implementing gameplay mechanics, enemy behavior, combat feedback, audio integration, and interface functionality within a larger production workflow. It could serve as part of a broader 3D project to develop a complete wave-based survival shooter framework with additional enemy types, weapon variations, progression systems, environmental arenas, advanced visual effects, and expanded gameplay mechanics. By implementing these gameplay systems and combat mechanics, the task establishes a flexible foundation to expand with additional content, increasing wave difficulty, and balancing improvements.

<ins> Rubric Items </ins>
<br>
1. All imported sprites and assets preserve their original visual quality with sharp rendering and no unintended scaling, blurring, or distortion.
- Run the main scene and verify that the character assets, objects, and game elements render without scaling, blurring, or distortion.
- Verifies that game assets retain their original appearance without scaling, blurring, or distortion caused by incorrect import settings.

2. The player character can collide with the enemy bats and the ground.
- Run the main scene and move the player character against the bats and the ground to confirm that the player collides with them.
- Without proper collision, the player would pass through the ground and enemies, undermining the game's core survival challenge.

3. The player's camera displays the gameplay in first-person view.
- Run the main scene and move the player character around the game to confirm that the camera displays in first-person view.
- The camera displays the game in first-person view to provide spatial awareness and consistent player control during movement.

4. The score counter increases by 50 points when defeating the bats.
- Run the main scene and have the player character shoot at the bats to observe that the score counter increases by 50 points.
- Score is the only persistent measure of player skill in this game, providing the feedback loop and incentive to improve across runs.

5. The game resets from the start when the player presses the R key.
- Run the main scene, press the R key during gameplay to confirm that the game, sprites, score, and visual elements reset completely.
- Without a quick reset, the player must close and relaunch the game between runs, breaking the rapid-retry loop that defines the genre.

6. The game closes when pressing the Escape key during gameplay.
- Run the main scene and press the Escape key during gameplay to confirm that the game application terminates completely.
- Pressing Escape provides a simple and reliable way for the player to exit the game during gameplay and terminate sudden crashes.

7. The game includes sound effects for shooting, hurting, and killing bats.
- Run the main scene and observe distinct sound effects when the player character shoots, damages, and defeats the bat enemies.
- The sound effects provide immediate feedback for combat and enemy defeat, reinforcing game actions and responsiveness.

8. The game-over screen displays score information and a retry option.
- Run the main scene, fail by falling off the ground, and observe a game-over screen displaying a high score value and a retry button.
- The game-over screen informs the player that the run has ended, displays their results, and offers an option to start a new attempt.

9. Pressing the P key displays a "PAUSED" label in the center, and pressing the same input again hides the label to resume the gameplay.
- Run the main scene, press the P key to show a "PAUSED" label, then press the P key again to hide the label and resume gameplay.
- Pausing lets players step away without losing progress, since interruptions would otherwise force them to abandon the game.

10. The game stores and updates the player's highest achieved score.
- Run the main scene, achieve a higher score than the previous best score, and confirm that the high score updates and saves correctly.
- Persistent high scores provide long-term goals across sessions, preventing best score progression from resetting after every run.

11. The background music continues to play when the game starts.
- Run the main scene and observe that the background music begins playing and loops at the end of the music audio with proper volume.
- Background music sets the atmosphere and provides continuous audio presence so the game does not feel silent during gameplay.

12. The game includes a kills counter under the score counter, displaying the total number of bats defeated by the player character.
- Run the main scene and defeat multiple bat enemies to confirm that the kill counter increases correctly for each defeated mob.
- The kills counter tracks combat and provides immediate feedback on player performance throughout the run when killing enemies.

13. The player character can move in all directions using the WASD keys.
- Run the main scene and move the player character with the WASD keys to confirm that movement control functions in all directions.
- WASD movement provides a consistent keyboard control scheme to allow the player to navigate the environment during gameplay.

14. The player character can jump upward when pressing the Space key.
- Run the main scene, then press the Space key to observe the player character jump upward to avoid enemies.
- Jumping allows the player to traverse obstacles and avoid enemies, and adds vertical movement to improve navigation and gameplay.

15. The player character can quickly sprint when pressing the Shift key.
- Run the main scene, then hold the Shift key while moving to observe the player character increase movement speed.
- Sprinting provides a sudden increase in movement speed, allowing faster traversal and more dynamic gameplay pacing.

16. The player character has a blue gun that can shoot bullets when pressing the left mouse button and follows the mouse cursor to aim.
- Run the main scene, move the mouse cursor to aim, then press the left mouse button to observe the player character shoot at bats.
- The weapon system allows the player to aim and shoot with the mouse, enabling direct and responsive control during combat.

17. Purple bats continuously spawn from hovering spawners, fly towards the player, and visually react to damage before dying after three hits.
- Run the main scene and observe the bats spawning, pursuing the player, reacting to damage, and dying after taking three hits.
- Enemy spawning and damage reactions create sustained gameplay pressure and communicate combat interactions during encounters.

18. Pressing the 0 key resets the stored high score during gameplay.
- Run the main scene, achieve a high score value, then press the 0 key to confirm that the stored high score resets correctly.
- Resetting the high score allows players to clear previous records at any time and restart score progression without deleting any saves.

19. A smoke explosion effect appears when a bat dies and when the player touches the kill zone below the ground environment.
- Run the main scene, defeat a bat, then lose all player health to confirm that the smoke explosion effect appears in both events.
- Explosion effects provide visual confirmation for enemy and player deaths, improving combat readability and gameplay feedback.

20. The environment includes three hovering pink spawners displaying scrolling "SPAWNING" text, positioned in separate corners of the area.
- Run the main scene and verify that three hovering pink spawners display scrolling "SPAWNING" text positioned around the area.
- The spawners identify enemy spawn locations and provide visual landmarks that improve environmental readability during gameplay.
<br>
Godot - Full Vertical Slice (Game Prototype) - Finished prompt creation.

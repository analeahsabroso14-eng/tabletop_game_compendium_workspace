# Tabletop Game Compendium

A Dart-based command-line application that manages and displays information about different tabletop games using a structured multi-package Dart workspace.

## Project Description

The **Tabletop Game Compendium** is a command-line application developed using Dart. It provides users with an organized collection of tabletop game information, including game names, categories, player counts, playing time, difficulty levels, and descriptions.

The project demonstrates object-oriented programming, JSON data processing, command-line interaction, error handling, logging, terminal styling, automated testing, and the organization of a Dart workspace with multiple packages.

## Objectives

The project aims to:

1. Store and manage information about different tabletop games.
2. Process and convert game data into Dart objects.
3. Provide a command-line interface for browsing tabletop games.
4. Allow users to search for games by name or category.
5. Display detailed information about selected games.
6. Implement error handling for invalid commands and input.
7. Use terminal colors to improve the command-line interface.
8. Implement logging for application activities and errors.
9. Organize the application using a Dart workspace with multiple packages.
10. Implement automated tests for the project components.

## Features

* Browse tabletop game information.
* Search games by name.
* Search games by category.
* Display game details.
* Display number of players.
* Display estimated playing time.
* Display game difficulty.
* Provide an interactive command-line interface.
* Handle invalid commands and user input.
* Use terminal colors for improved output.
* Record application activities and errors through logging.
* Convert game data into Dart models.
* Provide help commands for users.
* Include automated tests.

## Technologies Used

* **Dart**
* **JSON**
* **Dart Testing Framework**
* **Logging**
* **ANSI Terminal Colors**
* **Git**
* **GitHub**
* **Visual Studio Code**

## Project Structure

```text
tabletop_game_compendium_workspace/
│
├── terminal_colors/
│   ├── lib/
│   │   ├── src/
│   │   │   ├── ansi.dart
│   │   │   └── terminal_colors_base.dart
│   │   ├── terminal_colors.dart
│   │   └── ...
│   ├── test/
│   └── pubspec.yaml
│
├── tabletop_games_api/
│   ├── lib/
│   │   ├── src/
│   │   │   ├── models.dart
│   │   │   ├── repository.dart
│   │   │   ├── exceptions.dart
│   │   │   └── ...
│   │   ├── tabletop_games_api.dart
│   │   └── ...
│   ├── test/
│   ├── example/
│   └── pubspec.yaml
│
├── tabletop_game_cli/
│   ├── bin/
│   │   └── tabletop_game_cli.dart
│   ├── lib/
│   │   ├── src/
│   │   │   ├── command_base.dart
│   │   │   ├── help_command.dart
│   │   │   ├── logging_config.dart
│   │   │   ├── list_command.dart
│   │   │   └── search_command.dart
│   │   ├── tabletop_game_cli.dart
│   │   └── ...
│   ├── test/
│   └── pubspec.yaml
│
├── pubspec.yaml
├── pubspec.lock
└── .gitignore
```

## Package Description

### terminal_colors

The **`terminal_colors`** package provides reusable ANSI terminal color constants and styling utilities used to improve the appearance of the command-line interface.

### tabletop_games_api

The **`tabletop_games_api`** package handles the tabletop game data and business logic. It contains the game data models, repository, and exception handling for game-related operations.

It is responsible for converting structured game data into Dart objects that can be used by the CLI application.

### tabletop_game_cli

The **`tabletop_game_cli`** package provides the command-line interface of the application. It handles user commands, game searches, game listings, help commands, logging, and formatted terminal output.

## Requirements

Before running the project, make sure the following are installed:

* Dart SDK 3.12.2 or later
* Git
* Visual Studio Code or another Dart-compatible IDE
* Internet connection if external data sources are used

## Installation

Clone the repository:

```bash
git clone https://github.com/USERNAME/tabletop_game_compendium_workspace.git
```

Navigate to the project directory:

```bash
cd tabletop_game_compendium_workspace
```

Get the project dependencies:

```bash
dart pub get
```

## Data Configuration

The application uses structured tabletop game data to provide information about different games.

Game information may include:

* Game name
* Category
* Number of players
* Playing time
* Difficulty
* Description

Example game data:

```json
{
  "name": "Catan",
  "category": "Strategy",
  "players": "3-4",
  "playingTime": "60-120 minutes",
  "difficulty": "Medium",
  "description": "A strategy game involving resource collection and settlement building."
}
```

## How to Run

Navigate to the CLI package:

```bash
cd tabletop_game_cli
```

Run the application:

```bash
dart run
```

The application will display the command-line interface:

```text
Tabletop Game Compendium [tabletop_games] >
```

## Example Usage

The application allows users to browse and search for tabletop games.

Example command:

```text
[tabletop_games] > search Catan
```

Example output:

```text
--- TABLETOP GAME INFORMATION ---

Game: Catan
Category: Strategy
Players: 3-4
Playing Time: 60-120 minutes
Difficulty: Medium

Description:
A strategy game involving resource collection,
trading, settlement building, and development.
```

Another example:

```text
[tabletop_games] > search strategy
```

Example output:

```text
--- SEARCH RESULTS ---

1. Catan
2. Ticket to Ride
3. Carcassonne
4. Risk
```

## Available Commands

### List

Display the available tabletop games.

```text
list
```

### Search

Search for a tabletop game by name or category.

```text
search Catan
```

or:

```text
search Strategy
```

### Help

Display available commands and usage information.

```text
help
```

### Exit

Close the application.

```text
exit
```

## Logging

The application uses logging to record important application activities and errors.

Logging can help identify:

* Application startup
* User commands
* Game searches
* Invalid commands
* Data processing activities
* Application errors
* Other runtime issues

Example log activities:

```text
INFO: Application started
INFO: User searched for "Catan"
INFO: Game information displayed
WARNING: Game not found
INFO: Application closed
```

## Error Handling

The application implements exception handling for possible errors during runtime.

Examples of errors that may be handled include:

* Invalid commands
* Empty search input
* Game not found
* Invalid game data
* Invalid JSON data
* Data processing errors
* Unexpected runtime errors

Example:

```text
[tabletop_games] > search UnknownGame

Error: No tabletop game found matching "UnknownGame".
```

## Testing

The project includes automated tests for its packages and components.

To analyze the entire workspace:

```bash
dart analyze
```

To run the tests:

```bash
dart test
```

A successful analysis should display:

```text
No issues found!
```

Successful tests should indicate that all implemented test cases have passed.

## Dart Workspace

The project is organized as a Dart workspace containing multiple related packages:

```text
terminal_colors
tabletop_games_api
tabletop_game_cli
```

This structure allows the packages to be developed and managed together while keeping their responsibilities separated.

The workspace architecture provides a clear separation between:

* Terminal formatting
* Game data and models
* Application logic
* Command-line interaction
* Testing

## Sample Workflow

The general workflow of the application is:

```text
User
  │
  ▼
Command-Line Interface
  │
  ▼
Command Handler
  │
  ▼
Tabletop Games Repository
  │
  ▼
Game Data
  │
  ▼
Dart Game Models
  │
  ▼
Formatted Game Information
  │
  ▼
Terminal Output
```

## Example Tabletop Games

The compendium can contain different types of tabletop games, such as:

```text
Strategy Games
├── Catan
├── Risk
└── Carcassonne

Family Games
├── Monopoly
├── Clue
└── Ticket to Ride

Card Games
├── Uno
├── Exploding Kittens
└── Sushi Go!

Party Games
├── Codenames
├── Dixit
└── Pictionary
```

## Conclusion

The **Tabletop Game Compendium** demonstrates how Dart can be used to develop a command-line application for organizing and managing tabletop game information.

The project provides practical experience in object-oriented programming, data modeling, JSON processing, command-line interaction, error handling, logging, terminal formatting, automated testing, and multi-package Dart workspace organization.

The use of separate packages makes the project easier to maintain, test, and extend with additional tabletop games and features in the future.

## Author

**Analeah Sabroso**

## Academic Project

This project was developed as part of an academic Dart programming project.

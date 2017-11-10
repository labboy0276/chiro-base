<?php

/**
 * @file
 * The Chiro Base profile.
 */

/**
 * Implements hook_install_tasks().
 */
function chiro_base_install_tasks(&$install_state) {
  $tasks = [
    'chiro_base_admin_theme_setup' => [
      'display_name' => t('Apply theme'),
      'display' => TRUE,
    ],
  ];
  return $tasks;
}

/**
 * Install the admin theme.
 *
 * @param array $install_state
 *   The install state.
 */
function chiro_base_admin_theme_setup(array &$install_state) {
  // Set the admin theme.
  \Drupal::configFactory()
    ->getEditable('system.theme')
    ->set('admin', 'adminimal_theme')
    ->save();

  // Set the admin theme for edit and adding content.
  \Drupal::configFactory()
  ->getEditable('node.settings')
  ->set('use_admin_theme', TRUE)
  ->save();
}

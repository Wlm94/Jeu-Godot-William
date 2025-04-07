# 🎮 Cursed Currents

*Cursed Currents* est un jeu de plateforme en 2D réalisé avec le moteur Godot. Vous incarnez un homme maudit, partiellement transformé en requin, qui tente désespérément de retrouver son apparence humaine.

![Cursed Currents Banner](C:\Users\miste\Documents\jeux-vidéos\assets\banner.png)

---

## 🧠 Concept

Un sorcier a lancé une malédiction sur le héros, le transformant peu à peu en requin. Masqué pour cacher son apparence, le protagoniste part à la recherche du responsable, traversant des environnements piégés, affrontant des ennemis et évitant des dangers mortels pour retrouver sa forme humaine.

---

## 🕹️ Gameplay

- Jeu de plateforme en 2D
- Sauts, esquive d’ennemis et de pièges
- Pics mortels, plateformes mobiles, ennemis scriptés
- Scènes dédiées pour le **menu**, le **jeu**, la **pause**
- Difficulté progressive

---

## 🎨 Personnage

Le personnage a été créé à l’aide de [Pixel Sprite Mixer](https://kingbell.itch.io/pixel-sprite-mixer), avec plusieurs animations intégrées :
- Marche
- Saut
- Idle
- Mort

L’apparence du héros est personnalisée pour correspondre au thème de la malédiction (masque, éléments mystérieux, etc.).

---

## 🔊 Son & Musique

- Musiques d’ambiance pour le **menu** et les **niveaux**
- Effets sonores pour les actions principales (saut, mort, collision)
- Intégration via `AudioStreamPlayer` dans Godot

---

## 🧱 Structure du projet

- 🎬 Scènes :
  - Menu principal
  - Niveau principal
  - Écran de pause
  - Ennemis (chaque ennemi dans sa propre scène)
  - Pics (scène avec script de mort)
- 🧠 Scripts :
  - Script partagé entre ennemis
  - Gestion du son, du mouvement, des collisions
- 📁 Organisation modulaire facilitant l’ajout de nouveaux niveaux ou mécaniques

---

## 🔧 Moteur utilisé

  - [Godot Engine](https://godotengine.org/) (version utilisée : 4.3.stable)

---

## 🚀 Lancer le jeu

1. Cloner le dépôt :
   ```bash
   git clone https://github.com/tonutilisateur/cursed-currents.git

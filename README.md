# 🖥️ Projet Windows Server – Déploiement sur Microsoft Azure

## 📘 Présentation

Dans ce projet, j’ai installé et configuré un **Windows Server** en utilisant **Microsoft Azure** au lieu d’un logiciel de virtualisation local.  
L'accès au serveur s'est fait via **Remote Desktop Protocol (RDP)**, ce qui a permis de bénéficier des ressources cloud pour un environnement plus stable et flexible.

---

## ⚙️ Étapes réalisées

- 📡 **Déploiement sur Azure** :  
  Création d'une machine virtuelle sous Windows Server via le portail Azure, avec configuration réseau, disque, sécurité et sauvegarde.

- 🏢 **Configuration des services Active Directory (AD DS)** :  
  Mise en place d’un domaine personnalisé, création d’**unités d’organisation (OU)** pour structurer les ressources.

- 👥 **Gestion des utilisateurs et groupes** :  
  Création d'utilisateurs, de groupes et de répertoires avec des **droits d'accès différenciés** selon les besoins.

- 🛡️ **Stratégies de groupe (GPO)** :  
  Application de politiques de sécurité et de restrictions aux unités organisationnelles.

- 📦 **Stockage et redondance** :  
  Introduction aux concepts liés au **WDS (Windows Deployment Services)**, aux disques, aux partages réseau et à la gestion de la redondance.

---

## 🎯 Objectifs pédagogiques

- Comprendre le fonctionnement d’un **contrôleur de domaine Active Directory**.
- Maîtriser la **gestion centralisée des utilisateurs, ressources et politiques de sécurité**.
- Découvrir l’**écosystème serveur de Microsoft** et son déploiement dans le cloud.

---

## 🧰 Outils et technologies utilisés

- Microsoft Azure (machine virtuelle Windows Server)
- Active Directory Domain Services (AD DS)
- Group Policy Objects (GPO)
- Windows Deployment Services (WDS)
- RDP (Remote Desktop Protocol)

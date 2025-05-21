# Personal Website Deployment to Google Cloud

This repository contains the files and documentation for deploying a personal website to Google Cloud Platform (GCP) as part of the CLOD2007 - Associate Cloud Engineering in-class Assignment 1.

## Project Overview

This project demonstrates the process of hosting a static website using Google Cloud Storage and automating infrastructure deployment with Terraform. It covers setting up a storage bucket, configuring public access, and troubleshooting common deployment issues.

## Files in this Repository

* `index.html`: The main HTML file for the personal website.
* `style.css`: The CSS file for styling the website.
* `main.tf`: The Terraform configuration file used to provision the GCP resources.

## Deployment Steps

1.  **HTML and CSS Structure**: The website uses a basic HTML structure and CSS styling.
2.  **Local Testing**: The `index.html` file was accessed locally in a browser to confirm its display.
3.  **GitHub Repository**: The project files were committed to a GitHub repository named `Resume_01`.
4.  **Netlify Hosting (Initial)**: The website was initially hosted on Netlify.
5.  **Google Cloud Configuration**:
    * Enabled the IAM Service Account Credentials API.
    * Enabled the Compute Engine API.
    * Created a Google Cloud Storage bucket named `gcp-terra-bucket`.
6.  **Terraform Deployment**:
    * A `main.tf` Terraform configuration file was created to define the GCP storage bucket and its properties, including website configuration (main page suffix `index.html`, error page `404.html`), and an IAM binding to make objects publicly viewable.
    * Terraform was initialized.
    * The `index.html`, `style.css`, and `main.tf` files were manually uploaded to the Google Cloud Shell.
    * The `terraform apply` command was executed.
7.  **Troubleshooting Public Access**:
    * Initially, the hosted website was inaccessible due to the resource not being public.
    * The `gsutil acl ch -u AllUsers:R gs://your-bucket-name/style.css` command was used to grant read permission to all users for the `style.css` file. (Note: This command would need to be applied to all necessary public assets, including `index.html` for full website access.)
    * After running the `gsutil` command, the website became accessible.

    Website Link: https://genuine-haupia-0c260b.netlify.app/

## Author

Mili Vaidya
Student ID: 500237238
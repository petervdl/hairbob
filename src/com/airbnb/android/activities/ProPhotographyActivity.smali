.class public Lcom/airbnb/android/activities/ProPhotographyActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "ProPhotographyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;
    }
.end annotation


# static fields
.field private static INVALID_ID:J = 0x0L

.field private static LISTING_ID:Ljava/lang/String; = null

.field private static LISTING_NAME:Ljava/lang/String; = null

.field public static ORIGIN_FOR_ANALYTICS:Ljava/lang/String; = null

.field public static final REQUEST_CODE_PHOTO_FOR_LISTING:I = 0x12f


# instance fields
.field private mProPhotoRequested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    const-string/jumbo v0, "origin_for_analyltics"

    sput-object v0, Lcom/airbnb/android/activities/ProPhotographyActivity;->ORIGIN_FOR_ANALYTICS:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "listing_id"

    sput-object v0, Lcom/airbnb/android/activities/ProPhotographyActivity;->LISTING_ID:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "listing_name"

    sput-object v0, Lcom/airbnb/android/activities/ProPhotographyActivity;->LISTING_NAME:Ljava/lang/String;

    .line 18
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/airbnb/android/activities/ProPhotographyActivity;->INVALID_ID:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    .line 22
    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ProPhotographyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity;->ORIGIN_FOR_ANALYTICS:Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->HOSPITALITY:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    invoke-virtual {v2}, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public static getIntentForListing(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # J
    .param p3, "listingName"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ProPhotographyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity;->LISTING_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 45
    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity;->LISTING_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity;->ORIGIN_FOR_ANALYTICS:Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    invoke-virtual {v2}, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/airbnb/android/activities/ProPhotographyActivity;->mProPhotoRequested:Z

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    :goto_5
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/ProPhotographyActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->finish()V

    .line 81
    return-void

    .line 79
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v5, 0x7f030010

    invoke-virtual {p0, v5}, Lcom/airbnb/android/activities/ProPhotographyActivity;->setContentView(I)V

    .line 54
    const v5, 0x7f0e05da

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/activities/ProPhotographyActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 56
    iput-boolean v7, p0, Lcom/airbnb/android/activities/ProPhotographyActivity;->mProPhotoRequested:Z

    .line 58
    if-nez p1, :cond_53

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ProPhotographyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Lcom/airbnb/android/activities/ProPhotographyActivity;->LISTING_ID:Ljava/lang/String;

    sget-wide v7, Lcom/airbnb/android/activities/ProPhotographyActivity;->INVALID_ID:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 60
    .local v2, "listingId":J
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ProPhotographyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Lcom/airbnb/android/activities/ProPhotographyActivity;->LISTING_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "listingName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ProPhotographyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Lcom/airbnb/android/activities/ProPhotographyActivity;->ORIGIN_FOR_ANALYTICS:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "analyticsOrdinal":I
    sget-wide v5, Lcom/airbnb/android/activities/ProPhotographyActivity;->INVALID_ID:J

    cmp-long v5, v2, v5

    if-eqz v5, :cond_54

    invoke-static {v0, v2, v3, v4}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->newInstanceForListing(IJLjava/lang/String;)Lcom/airbnb/android/fragments/ProPhotographyFragment;

    move-result-object v1

    .line 67
    .local v1, "fragment":Lcom/airbnb/android/fragments/ProPhotographyFragment;
    :goto_41
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ProPhotographyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f080025

    invoke-virtual {v5, v6, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 69
    .end local v0    # "analyticsOrdinal":I
    .end local v1    # "fragment":Lcom/airbnb/android/fragments/ProPhotographyFragment;
    .end local v2    # "listingId":J
    .end local v4    # "listingName":Ljava/lang/String;
    :cond_53
    return-void

    .line 63
    .restart local v0    # "analyticsOrdinal":I
    .restart local v2    # "listingId":J
    .restart local v4    # "listingName":Ljava/lang/String;
    :cond_54
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->newInstance(I)Lcom/airbnb/android/fragments/ProPhotographyFragment;

    move-result-object v1

    goto :goto_41
.end method

.method public setPhotoRequestedForListing(Z)V
    .registers 2
    .param p1, "requested"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/airbnb/android/activities/ProPhotographyActivity;->mProPhotoRequested:Z

    .line 74
    return-void
.end method

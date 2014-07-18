.class public Lcom/airbnb/android/activities/ReviewsActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ReviewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    }
.end annotation


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final ARG_REVIEW_MODE:Ljava/lang/String; = "reviewMode"

.field private static final ARG_USER:Ljava/lang/String; = "user"

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/airbnb/android/activities/ReviewsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/ReviewsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 20
    return-void
.end method

.method public static intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ReviewsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reviewMode"

    sget-object v2, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public static intentForUser(Landroid/content/Context;Lcom/airbnb/android/models/User;Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .param p2, "mode"    # Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ReviewsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reviewMode"

    invoke-virtual {p2}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ReviewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->values()[Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    move-result-object v4

    const-string/jumbo v5, "reviewMode"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aget-object v2, v4, v5

    .line 47
    .local v2, "reviewsMode":Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    const-string/jumbo v4, "listing"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 48
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    if-nez v1, :cond_3c

    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/User;

    move-object v3, v4

    .line 51
    .local v3, "user":Lcom/airbnb/android/models/User;
    :goto_2b
    if-eqz v3, :cond_33

    sget-object v4, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-ne v2, v4, :cond_41

    if-nez v1, :cond_41

    .line 52
    :cond_33
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "bad user or listing passed to reviews activity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    .end local v3    # "user":Lcom/airbnb/android/models/User;
    :cond_3c
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v3

    goto :goto_2b

    .line 56
    .restart local v3    # "user":Lcom/airbnb/android/models/User;
    :cond_41
    const v5, 0x7f0e0560

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-ne v2, v4, :cond_6f

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getReviewsCount()I

    move-result v4

    :goto_4f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    const/4 v7, 0x1

    sget-object v4, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-ne v2, v4, :cond_74

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_5e
    aput-object v4, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/airbnb/android/activities/ReviewsActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 62
    sget-object v4, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-ne v2, v4, :cond_79

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ReviewsFragment;->newInstanceForListing(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    :goto_6b
    invoke-virtual {p0, v4, v8}, Lcom/airbnb/android/activities/ReviewsActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 66
    return-void

    .line 56
    :cond_6f
    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getRevieweeCount()I

    move-result v4

    goto :goto_4f

    :cond_74
    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_5e

    .line 62
    :cond_79
    invoke-static {v3, v2}, Lcom/airbnb/android/fragments/ReviewsFragment;->newInstanceForUser(Lcom/airbnb/android/models/User;Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    goto :goto_6b
.end method

.class public Lcom/airbnb/android/activities/CompanionProfileActivity;
.super Lcom/airbnb/android/activities/SlideUpTransparentActivity;
.source "CompanionProfileActivity.java"


# static fields
.field private static final EXTRA_ABOUT_ME:Ljava/lang/String; = "about_me"

.field private static final EXTRA_COMPANION:Ljava/lang/String; = "companion"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;-><init>()V

    return-void
.end method

.method public static intentForCompanion(Landroid/content/Context;Lcom/airbnb/android/models/User;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "companion"    # Lcom/airbnb/android/models/User;
    .param p2, "aboutMe"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/CompanionProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "companion"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    const-string/jumbo v1, "about_me"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    return-object v0
.end method


# virtual methods
.method public getSlideUpTransparentFragment(Landroid/support/v4/app/FragmentManager;)Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .registers 6
    .param p1, "fragManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "companion"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/User;

    .line 26
    .local v1, "companion":Lcom/airbnb/android/models/User;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "about_me"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "aboutMe":Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/User;Ljava/lang/String;)Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;

    move-result-object v2

    return-object v2
.end method

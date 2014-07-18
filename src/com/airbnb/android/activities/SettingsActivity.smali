.class public Lcom/airbnb/android/activities/SettingsActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/SettingsActivity;->requestWindowFeature(I)Z

    .line 22
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/SettingsActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f0e0032

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/SettingsActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 24
    return-void
.end method

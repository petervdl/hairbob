.class public Lcom/airbnb/android/activities/ReferencesActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ReferencesActivity.java"


# static fields
.field private static final ARG_USERID:Ljava/lang/String; = "userId"

.field private static final ARG_USERNAME:Ljava/lang/String; = "userName"

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/airbnb/android/activities/ReferencesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/ReferencesActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForUser(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # J
    .param p3, "userName"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ReferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 20
    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v2, 0x7f0e05ff

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ReferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "userName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/ReferencesActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 28
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ReferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "userId"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 29
    .local v0, "userId":J
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ReferencesFragment;->newInstance(J)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/airbnb/android/activities/ReferencesActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 30
    return-void
.end method

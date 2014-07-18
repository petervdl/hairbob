.class public Lcom/airbnb/android/activities/CompanionServicesActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "CompanionServicesActivity.java"


# static fields
.field private static final ARG_COMPANION_SERVICE:Ljava/lang/String; = "companion_service"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForCompanionService(Landroid/content/Context;Lcom/airbnb/android/enums/CompanionService;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "companionService"    # Lcom/airbnb/android/enums/CompanionService;

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/CompanionServicesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "companion_service"

    invoke-virtual {p1}, Lcom/airbnb/android/enums/CompanionService;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 27
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f0e03b4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/CompanionServicesActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 31
    if-nez p1, :cond_27

    .line 32
    invoke-static {}, Lcom/airbnb/android/enums/CompanionService;->values()[Lcom/airbnb/android/enums/CompanionService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "companion_service"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    aget-object v0, v2, v3

    .line 33
    .local v0, "companionService":Lcom/airbnb/android/enums/CompanionService;
    invoke-static {v0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->newInstance(Lcom/airbnb/android/enums/CompanionService;)Lcom/airbnb/android/fragments/CompanionServicesFragment;

    move-result-object v1

    .line 34
    .local v1, "fragment":Lcom/airbnb/android/fragments/CompanionServicesFragment;
    invoke-virtual {p0, v1, v5}, Lcom/airbnb/android/activities/CompanionServicesActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 36
    .end local v0    # "companionService":Lcom/airbnb/android/enums/CompanionService;
    .end local v1    # "fragment":Lcom/airbnb/android/fragments/CompanionServicesFragment;
    :cond_27
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/airbnb/android/activities/CompanionServicesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 45
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 42
    :pswitch_c
    const-class v0, Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/airbnb/android/activities/AutoAirActivity;->intentForFragment(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/CompanionServicesActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_b

    .line 40
    :pswitch_data_18
    .packed-switch 0x7f080544
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02014e

    const v2, 0x7f0a0014

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 59
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

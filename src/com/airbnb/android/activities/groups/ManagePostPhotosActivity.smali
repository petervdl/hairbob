.class public Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ManagePostPhotosActivity.java"


# static fields
.field private static final INTENT_EXTRA_CONTENT:Ljava/lang/String; = "content"

.field public static final PHOTO_MODE_CAMERA:Ljava/lang/String; = "camera"

.field public static final PHOTO_MODE_GALLERY:Ljava/lang/String; = "gallery"


# instance fields
.field private mManagePhotosFragment:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForContent(Landroid/content/Context;Lcom/airbnb/android/models/groups/Content;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 4

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "data":Landroid/content/Intent;
    const-string/jumbo v1, "content"

    iget-object v2, p0, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getContent()Lcom/airbnb/android/models/groups/Content;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->setResult(ILandroid/content/Intent;)V

    .line 58
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->finish()V

    .line 59
    return-void
.end method

.method protected getWindowFeatures()[I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x5
        0x9
        0xa
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v2}, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Content;

    .line 44
    .local v1, "content":Lcom/airbnb/android/models/groups/Content;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->findFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    iput-object v2, p0, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    .line 46
    iget-object v2, p0, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    if-nez v2, :cond_32

    .line 47
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->newInstance(Lcom/airbnb/android/models/groups/Content;)Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    .line 48
    iget-object v2, p0, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->mManagePhotosFragment:Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/groups/ManagePostPhotosActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 50
    :cond_32
    return-void
.end method

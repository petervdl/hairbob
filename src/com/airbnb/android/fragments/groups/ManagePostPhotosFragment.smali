.class public Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;
.super Landroid/support/v4/app/Fragment;
.source "ManagePostPhotosFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;
.implements Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;
.implements Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$NewContentUpdatedEvent;
    }
.end annotation


# static fields
.field private static final ARGS_CONTENT:Ljava/lang/String; = "content"

.field private static final ARGS_PHOTO_FROM_CAMERA:Ljava/lang/String; = "photo_from_camera"

.field private static final REQUEST_CODE_DELETE_PHOTO:I = 0x3

.field private static final REQUEST_CODE_SELECT_PICTURE:I = 0x2

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x1

.field private static final SAVED_MULTI_SELECT_COUNT:Ljava/lang/String; = "multi_select_count"

.field private static final SAVED_REMOVE_PHOTOS_MODE:Ljava/lang/String; = "remove_photos_mode"

.field private static final TAG_DIALOG_FRAGMENT:Ljava/lang/String; = "dialog"


# instance fields
.field private mContent:Lcom/airbnb/android/models/groups/Content;

.field private mMultiSelectCount:I

.field private mPhotoFromCamera:Ljava/io/File;

.field private mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

.field private mRemovePhotosItem:Landroid/view/MenuItem;

.field private mRemovePhotosMode:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 436
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)Lcom/airbnb/android/views/PhotoRearranger;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)Lcom/airbnb/android/models/groups/Content;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updatePhotoCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getPhotoFromCamera()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getPhotoFromGallery()V

    return-void
.end method

.method private finishIfEmpty()V
    .registers 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 327
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Content;->hasPhotos()Z

    move-result v1

    if-nez v1, :cond_11

    .line 328
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 330
    :cond_11
    return-void
.end method

.method private getPhoto()V
    .registers 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 171
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_7

    .line 194
    :goto_6
    return-void

    .line 174
    :cond_7
    invoke-static {v0}, Lcom/airbnb/android/utils/CameraHelper;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 175
    .local v1, "hasCamera":Z
    if-eqz v1, :cond_1f

    .line 176
    new-instance v2, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V

    new-instance v3, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$3;-><init>(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V

    invoke-static {v0, v2, v3}, Lcom/airbnb/android/utils/PhotoUtils;->createPhotoDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_6

    .line 192
    :cond_1f
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getPhotoFromGallery()V

    goto :goto_6
.end method

.method private getPhotoFromCamera()V
    .registers 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Content;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/android/utils/CameraHelper;->getCameraFile(I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    .line 236
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    invoke-static {v1}, Lcom/airbnb/android/utils/CameraHelper;->getCameraIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 238
    return-void
.end method

.method private getPhotoFromGallery()V
    .registers 3

    .prologue
    .line 230
    invoke-static {}, Lcom/airbnb/android/utils/PhotoUtils;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v0

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/Content;)Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;
    .registers 4
    .param p0, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 68
    new-instance v1, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;-><init>()V

    .line 69
    .local v1, "f":Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method

.method private showActionBar(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 421
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_f

    .line 422
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 423
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz p1, :cond_10

    .line 424
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 429
    .end local v0    # "actionbar":Landroid/app/ActionBar;
    :cond_f
    :goto_f
    return-void

    .line 426
    .restart local v0    # "actionbar":Landroid/app/ActionBar;
    :cond_10
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_f
.end method

.method private showProgressSpinner(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 414
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_d

    .line 415
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 417
    :cond_d
    return-void
.end method

.method private updateContent()V
    .registers 6

    .prologue
    .line 404
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PhotoRearranger;->getPhotos()Ljava/util/ArrayList;

    move-result-object v3

    .line 405
    .local v3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Photo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, "groupPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Photo;

    .line 407
    .local v2, "photo":Lcom/airbnb/android/models/Photo;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 409
    .end local v2    # "photo":Lcom/airbnb/android/models/Photo;
    :cond_1f
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4, v0}, Lcom/airbnb/android/models/groups/Content;->resetPhotos(Ljava/util/List;)V

    .line 410
    return-void
.end method

.method private updatePhotoCount()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_9

    .line 97
    :goto_8
    return-void

    .line 87
    :cond_9
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PhotoRearranger;->getLocalPhotoCount()I

    move-result v0

    .line 89
    .local v0, "count":I
    if-lez v0, :cond_4f

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4f

    move v1, v2

    .line 91
    .local v1, "visible":Z
    :goto_22
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_2b

    .line 92
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosItem:Landroid/view/MenuItem;

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    :cond_2b
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0020

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-virtual {v5, v6, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    sget-boolean v2, Lcom/airbnb/android/services/GroupPhotoUploadService;->sIsCurrentlyUploading:Z

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->showProgressSpinner(Z)V

    goto :goto_8

    .end local v1    # "visible":Z
    :cond_4f
    move v1, v3

    .line 89
    goto :goto_22
.end method

.method private updateSelectionCount()V
    .registers 8

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_22

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0024

    iget v3, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mMultiSelectCount:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mMultiSelectCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    :cond_22
    return-void
.end method


# virtual methods
.method public getContent()Lcom/airbnb/android/models/groups/Content;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 304
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_46

    .line 322
    const/4 v4, 0x0

    :goto_8
    return v4

    .line 306
    :pswitch_9
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PhotoRearranger;->getSelectedPhotoIds()Ljava/util/ArrayList;

    move-result-object v3

    .line 307
    .local v3, "selectedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updatePhotoCount()V

    .line 309
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 310
    .local v1, "id":Ljava/lang/Long;
    new-instance v2, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/airbnb/android/models/Photo;-><init>(J)V

    .line 311
    .local v2, "photo":Lcom/airbnb/android/models/Photo;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4, v2}, Lcom/airbnb/android/models/groups/Content;->removePhoto(Lcom/airbnb/android/models/Photo;)V

    goto :goto_16

    .line 313
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "photo":Lcom/airbnb/android/models/Photo;
    :cond_31
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/PhotoRearranger;->setPhotoable(Lcom/airbnb/android/interfaces/Photoable;)V

    .line 315
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_41

    .line 316
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 318
    :cond_41
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->finishIfEmpty()V

    .line 319
    const/4 v4, 0x1

    goto :goto_8

    .line 304
    :pswitch_data_46
    .packed-switch 0x7f080550
        :pswitch_9
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 242
    packed-switch p1, :pswitch_data_6c

    .line 282
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    :cond_8
    :goto_8
    return-void

    .line 244
    :pswitch_9
    if-ne p2, v4, :cond_8

    .line 245
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PhotoRearranger;->addPendingPhoto()V

    .line 246
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 247
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1d

    .line 248
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/airbnb/android/utils/PhotoUtils;->compressAndUploadGroupsPhotosFromUri(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 250
    :cond_1d
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updatePhotoCount()V

    goto :goto_8

    .line 255
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_21
    if-ne p2, v4, :cond_8

    .line 256
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PhotoRearranger;->addPendingPhoto()V

    .line 257
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 258
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_33

    .line 259
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    invoke-static {v0, v4}, Lcom/airbnb/android/utils/PhotoUtils;->compressAndUploadGroupsPhotos(Landroid/app/Activity;Ljava/io/File;)V

    .line 261
    :cond_33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updatePhotoCount()V

    goto :goto_8

    .line 266
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_37
    if-ne p2, v4, :cond_62

    .line 267
    const-string/jumbo v4, "photo_id"

    const-wide/16 v5, -0x1

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 268
    .local v2, "photoId":J
    invoke-direct {p0, v7}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->showActionBar(Z)V

    .line 269
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PhotoRearranger;->removeSelectedPhoto()V

    .line 270
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updatePhotoCount()V

    .line 272
    new-instance v1, Lcom/airbnb/android/models/Photo;

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/models/Photo;-><init>(J)V

    .line 273
    .local v1, "photo":Lcom/airbnb/android/models/Photo;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4, v1}, Lcom/airbnb/android/models/groups/Content;->removePhoto(Lcom/airbnb/android/models/Photo;)V

    .line 274
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/PhotoRearranger;->setPhotoable(Lcom/airbnb/android/interfaces/Photoable;)V

    .line 275
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->finishIfEmpty()V

    goto :goto_8

    .line 277
    .end local v1    # "photo":Lcom/airbnb/android/models/Photo;
    .end local v2    # "photoId":J
    :cond_62
    invoke-direct {p0, v7}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->showActionBar(Z)V

    .line 278
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PhotoRearranger;->resetSelectedPhoto()V

    goto :goto_8

    .line 242
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_21
        :pswitch_9
        :pswitch_37
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const-string/jumbo v1, "ManagePostPhotosFragment"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "ManagePostPhotosFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_44

    .line 107
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Content;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->setHasOptionsMenu(Z)V

    .line 112
    if-eqz p1, :cond_3b

    .line 113
    const-string/jumbo v1, "photo_from_camera"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "photoFromCamera":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 115
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    .line 119
    :cond_3b
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "photoFromCamera":Ljava/lang/String;
    :catch_44
    move-exception v1

    const/4 v1, 0x0

    :try_start_46
    const-string/jumbo v2, "ManagePostPhotosFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_4d} :catch_44

    goto :goto_f
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 290
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 291
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100018

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mMultiSelectCount:I

    .line 293
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PhotoRearranger;->startMultiSelect()V

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 198
    const v1, 0x7f100012

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 200
    const v1, 0x7f080545

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosItem:Landroid/view/MenuItem;

    .line 202
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v0, 0x1

    .line 203
    .local v0, "visible":Z
    :goto_20
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 206
    return-void

    .line 202
    .end local v0    # "visible":Z
    :cond_29
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "ManagePostPhotosFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_5e

    .line 141
    :goto_9
    const v1, 0x7f03009c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/PhotoRearranger;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    .line 144
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/views/PhotoRearranger;->setDragAndDropListener(Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;)V

    .line 145
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/views/PhotoRearranger;->setMultiSelectListener(Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;)V

    .line 146
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/views/PhotoRearranger;->setSingleSelectListener(Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;)V

    .line 148
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PhotoRearranger;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 160
    if-eqz p3, :cond_5a

    const-string/jumbo v1, "remove_photos_mode"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 161
    const-string/jumbo v1, "multi_select_count"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mMultiSelectCount:I

    .line 162
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    .line 163
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updateSelectionCount()V

    .line 166
    :cond_5a
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_5e
    move-exception v1

    const/4 v1, 0x0

    :try_start_60
    const-string/jumbo v2, "ManagePostPhotosFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_67} :catch_5e

    goto :goto_9
.end method

.method public onDeselect()V
    .registers 2

    .prologue
    .line 396
    iget v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mMultiSelectCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mMultiSelectCount:I

    .line 397
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updateSelectionCount()V

    .line 398
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 136
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    .line 335
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PhotoRearranger;->endMultiSelect()V

    .line 336
    return-void
.end method

.method public onDragStart()V
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->showActionBar(Z)V

    .line 341
    const-string/jumbo v0, "tap_rearrange_photo"

    invoke-static {v0}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPostPhotos(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public onDrop(Z)V
    .registers 3
    .param p1, "orderModified"    # Z

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->showActionBar(Z)V

    .line 347
    if-eqz p1, :cond_9

    .line 348
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updateContent()V

    .line 350
    :cond_9
    return-void
.end method

.method public onDroppedToRemove(J)V
    .registers 8
    .param p1, "photoId"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 378
    .local v0, "currentDialog":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 379
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v0, :cond_18

    .line 380
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 382
    :cond_18
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 383
    invoke-static {p1, p2}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->newInstance(J)Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    move-result-object v1

    .line 384
    .local v1, "dialog":Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;
    const/4 v3, 0x3

    invoke-virtual {v1, p0, v3}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 385
    const-string/jumbo v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_2c

    .line 224
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 213
    :sswitch_d
    const-string/jumbo v1, "tap_add_photo"

    invoke-static {v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPostPhotos(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getPhoto()V

    goto :goto_c

    .line 218
    :sswitch_17
    const-string/jumbo v1, "tap_remove_photo"

    invoke-static {v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPostPhotos(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    .line 220
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updateSelectionCount()V

    goto :goto_c

    .line 211
    nop

    :sswitch_data_2c
    .sparse-switch
        0x7f08053d -> :sswitch_d
        0x7f080545 -> :sswitch_17
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 446
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 447
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$NewContentUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$NewContentUpdatedEvent;-><init>(Lcom/airbnb/android/models/groups/Content;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 448
    return-void
.end method

.method public onPhotoUploadComplete(Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 359
    iget-object v0, p1, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;->mPhoto:Lcom/airbnb/android/models/Photo;

    if-nez v0, :cond_23

    .line 360
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 361
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0500

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 362
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->removePendingPhoto(I)V

    .line 371
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updatePhotoCount()V

    .line 372
    return-void

    .line 365
    :cond_23
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;->mPhoto:Lcom/airbnb/android/models/Photo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 366
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    iget-object v1, p1, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;->mPhoto:Lcom/airbnb/android/models/Photo;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/Content;->addPhoto(Lcom/airbnb/android/models/Photo;)V

    .line 368
    :cond_38
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->setPhotoable(Lcom/airbnb/android/interfaces/Photoable;)V

    goto :goto_1f
.end method

.method public onPhotoUploadStarted(Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadStartedEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->showProgressSpinner(Z)V

    .line 355
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    if-eqz v0, :cond_13

    .line 126
    const-string/jumbo v0, "photo_from_camera"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_13
    const-string/jumbo v1, "remove_photos_mode"

    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string/jumbo v0, "multi_select_count"

    iget v1, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mMultiSelectCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    return-void

    .line 129
    :cond_27
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onSelect()V
    .registers 2

    .prologue
    .line 390
    iget v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mMultiSelectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->mMultiSelectCount:I

    .line 391
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updateSelectionCount()V

    .line 392
    return-void
.end method

.method public onSelect(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 434
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 2
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 79
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment;->updatePhotoCount()V

    .line 80
    return-void
.end method

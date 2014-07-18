.class public Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;
.super Landroid/support/v4/app/Fragment;
.source "ManagePhotosFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;
.implements Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;
.implements Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARGS_LISTING:Ljava/lang/String; = "listing"

.field private static final ARGS_PHOTO_FROM_CAMERA:Ljava/lang/String; = "photo_from_camera"

.field private static final DIALOG_REQ_CANCEL_PRO_PHOTO:I = 0x3e1

.field private static final REQUEST_CODE_DELETE_PHOTO:I = 0x4

.field private static final REQUEST_CODE_EDIT_CAPTIONS:I = 0x3

.field private static final REQUEST_CODE_SELECT_PICTURE:I = 0x2

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x1

.field private static final SAVED_MULTI_SELECT_COUNT:Ljava/lang/String; = "multi_select_count"

.field private static final SAVED_REMOVE_PHOTOS_MODE:Ljava/lang/String; = "remove_photos_mode"

.field private static final TAG_DIALOG_FRAGMENT:Ljava/lang/String; = "dialog"


# instance fields
.field private mEditCaptionsItem:Landroid/view/MenuItem;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mMultiSelectCount:I

.field private mPhotoFromCamera:Ljava/io/File;

.field private mPhotoPrompt:Landroid/view/View;

.field private mPhotoPromptIcon:Landroid/view/View;

.field private mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

.field private mRemovePhotosItem:Landroid/view/MenuItem;

.field private mRemovePhotosMode:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/views/PhotoRearranger;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updatePhotoCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showProgressSpinner(Z)V

    return-void
.end method

.method private cancelProPhotography()V
    .registers 6

    .prologue
    .line 332
    const v2, 0x7f0e05e1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    .line 334
    .local v0, "progressDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    new-instance v2, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 345
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 347
    new-instance v1, Lcom/airbnb/android/requests/ProPhotoRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->CANCEL:Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    new-instance v4, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;

    invoke-direct {v4, p0, v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/android/requests/ProPhotoRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/ProPhotoRequest$Type;Lcom/airbnb/android/requests/RequestListener;)V

    .line 364
    .local v1, "request":Lcom/airbnb/android/requests/ProPhotoRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/ProPhotoRequest;->execute()V

    .line 365
    return-void
.end method

.method private executeListingPhotoUpdate(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    new-instance v0, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$9;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$9;-><init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;->execute()V

    .line 687
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 96
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;-><init>()V

    .line 97
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v1
.end method

.method private showActionBar(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 718
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_f

    .line 719
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 720
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz p1, :cond_10

    .line 721
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 726
    .end local v0    # "actionbar":Landroid/app/ActionBar;
    :cond_f
    :goto_f
    return-void

    .line 723
    .restart local v0    # "actionbar":Landroid/app/ActionBar;
    :cond_10
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_f
.end method

.method private showProgressSpinner(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 711
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_d

    .line 712
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 714
    :cond_d
    return-void
.end method

.method private updateLocalListing()V
    .registers 7

    .prologue
    .line 693
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v4}, Lcom/airbnb/android/views/PhotoRearranger;->getPhotos()Ljava/util/ArrayList;

    move-result-object v2

    .line 694
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Photo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 695
    .local v3, "pictureUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Photo;

    .line 696
    .local v1, "photo":Lcom/airbnb/android/models/Photo;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Photo;->getPictureUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 699
    .end local v1    # "photo":Lcom/airbnb/android/models/Photo;
    :cond_27
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4, v2}, Lcom/airbnb/android/models/Listing;->setPhotos(Ljava/util/List;)V

    .line 700
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4, v3}, Lcom/airbnb/android/models/Listing;->setPictureUrls(Ljava/util/List;)V

    .line 701
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/models/Listing;->setPictureCount(I)V

    .line 702
    return-void
.end method

.method private updatePhotoCount()V
    .registers 9

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_b

    .line 136
    :goto_a
    return-void

    .line 115
    :cond_b
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v2}, Lcom/airbnb/android/views/PhotoRearranger;->getLocalPhotoCount()I

    move-result v0

    .line 117
    .local v0, "count":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoPrompt:Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 118
    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoPrompt:Landroid/view/View;

    if-nez v0, :cond_72

    move v2, v3

    :goto_1a
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_1d
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoPromptIcon:Landroid/view/View;

    if-eqz v2, :cond_29

    .line 122
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoPromptIcon:Landroid/view/View;

    if-nez v0, :cond_26

    move v4, v3

    :cond_26
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_29
    if-lez v0, :cond_74

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v2, :cond_74

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_74

    move v1, v5

    .line 126
    .local v1, "visible":Z
    :goto_3c
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mEditCaptionsItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_45

    .line 127
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mEditCaptionsItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    :cond_45
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_4e

    .line 131
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    :cond_4e
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d0020

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    sget-boolean v2, Lcom/airbnb/android/services/PhotoUploadService;->sIsCurrentlyUploading:Z

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showProgressSpinner(Z)V

    goto :goto_a

    .end local v1    # "visible":Z
    :cond_72
    move v2, v4

    .line 118
    goto :goto_1a

    :cond_74
    move v1, v3

    .line 125
    goto :goto_3c
.end method

.method private updateSelectionCount()V
    .registers 8

    .prologue
    .line 139
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_22

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0024

    iget v3, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mMultiSelectCount:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mMultiSelectCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    :cond_22
    return-void
.end method


# virtual methods
.method public getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updateLocalListing()V

    .line 706
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 13
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 544
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_80

    move v6, v7

    .line 568
    :cond_a
    :goto_a
    return v6

    .line 546
    :pswitch_b
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v8}, Lcom/airbnb/android/views/PhotoRearranger;->getAndRemoveSelectedPhotoIds()Ljava/util/ArrayList;

    move-result-object v4

    .line 547
    .local v4, "selectedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updatePhotoCount()V

    .line 549
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v8

    if-eqz v8, :cond_6f

    const-string/jumbo v2, "ml_post_list"

    .line 550
    .local v2, "mixPanelListingState":Ljava/lang/String;
    :goto_1f
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    sget-object v9, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v9, v9, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v9, v8, v7

    aput-object v2, v8, v6

    const/4 v7, 0x2

    const-string/jumbo v9, "photos"

    aput-object v9, v8, v7

    const/4 v7, 0x3

    const-string/jumbo v9, "photo_home"

    aput-object v9, v8, v7

    const/4 v7, 0x4

    const-string/jumbo v9, "photo_delete"

    aput-object v9, v8, v7

    const/4 v7, 0x5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v8}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 553
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v5, "selectedPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Photo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 555
    .local v1, "id":Ljava/lang/Long;
    new-instance v3, Lcom/airbnb/android/models/Photo;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Lcom/airbnb/android/models/Photo;-><init>(J)V

    .line 556
    .local v3, "photo":Lcom/airbnb/android/models/Photo;
    invoke-virtual {v3}, Lcom/airbnb/android/models/Photo;->markForDeletion()V

    .line 557
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 549
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "mixPanelListingState":Ljava/lang/String;
    .end local v3    # "photo":Lcom/airbnb/android/models/Photo;
    .end local v5    # "selectedPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Photo;>;"
    :cond_6f
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_1f

    .line 559
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mixPanelListingState":Ljava/lang/String;
    .restart local v5    # "selectedPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Photo;>;"
    :cond_73
    invoke-direct {p0, v5}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->executeListingPhotoUpdate(Ljava/util/List;)V

    .line 561
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_a

    .line 562
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    invoke-virtual {v7}, Landroid/view/ActionMode;->finish()V

    goto :goto_a

    .line 544
    :pswitch_data_80
    .packed-switch 0x7f080550
        :pswitch_b
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 20
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 370
    sparse-switch p1, :sswitch_data_1c2

    .line 523
    invoke-super/range {p0 .. p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 527
    :cond_6
    :goto_6
    return-void

    .line 372
    :sswitch_7
    sget-object v12, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v13, "cancel_request"

    const-string/jumbo v14, "cancel_request_click"

    invoke-static {v12, v13, v14}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackClick(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->cancelProPhotography()V

    goto :goto_6

    .line 377
    :sswitch_16
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 378
    const/4 v7, 0x1

    .line 379
    .local v7, "photoCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v11, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_35

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v12}, Lcom/airbnb/android/views/PhotoRearranger;->addPendingPhoto()V

    .line 385
    :cond_35
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 387
    .local v2, "clipData":Landroid/content/ClipData;
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    .line 388
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_44
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v12

    if-ge v4, v12, :cond_5f

    .line 389
    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v12}, Lcom/airbnb/android/views/PhotoRearranger;->addPendingPhoto()V

    .line 388
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 394
    .end local v2    # "clipData":Landroid/content/ClipData;
    .end local v4    # "i":I
    :cond_5f
    move v3, v7

    .line 396
    .local v3, "finalPhotoCount":I
    new-instance v12, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11, v3}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$5;-><init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Ljava/util/List;I)V

    sget-object v13, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Void;

    instance-of v15, v12, Landroid/os/AsyncTask;

    if-nez v15, :cond_77

    invoke-virtual {v12, v13, v14}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 425
    :goto_73
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updatePhotoCount()V

    goto :goto_6

    .line 396
    :cond_77
    check-cast v12, Landroid/os/AsyncTask;

    invoke-static {v12, v13, v14}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_73

    .line 430
    .end local v3    # "finalPhotoCount":I
    .end local v7    # "photoCount":I
    .end local v11    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :sswitch_7d
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 431
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v12}, Lcom/airbnb/android/views/PhotoRearranger;->addPendingPhoto()V

    .line 433
    new-instance v12, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$6;-><init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V

    sget-object v13, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Void;

    instance-of v15, v12, Landroid/os/AsyncTask;

    if-nez v15, :cond_a1

    invoke-virtual {v12, v13, v14}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 456
    :goto_9c
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updatePhotoCount()V

    goto/16 :goto_6

    .line 433
    :cond_a1
    check-cast v12, Landroid/os/AsyncTask;

    invoke-static {v12, v13, v14}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_9c

    .line 461
    :sswitch_a7
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 462
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showProgressSpinner(Z)V

    .line 464
    const-string/jumbo v12, "num_captions_updated"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 465
    .local v1, "captionsUpdated":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v12}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v12

    if-eqz v12, :cond_124

    const-string/jumbo v5, "ml_post_list"

    .line 466
    .local v5, "mixPanelListingState":Ljava/lang/String;
    :goto_c9
    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    sget-object v14, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v14, v14, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "photos"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "photo_home"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "caption_save_click"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 469
    const-string/jumbo v12, "managed_listing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/airbnb/android/models/Listing;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 470
    new-instance v12, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v13}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v14}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v14

    new-instance v15, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;

    invoke-direct/range {v15 .. v16}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$7;-><init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V

    invoke-direct {v12, v13, v14, v15}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v12}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;->execute()V

    goto/16 :goto_6

    .line 465
    .end local v5    # "mixPanelListingState":Ljava/lang/String;
    :cond_124
    const-string/jumbo v5, "ml_pre_list"

    goto :goto_c9

    .line 494
    .end local v1    # "captionsUpdated":I
    :sswitch_128
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    sget-object v13, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->REQUESTED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    iget-object v13, v13, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->value:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/airbnb/android/models/Listing;->setProPhotoStatus(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_6

    .line 501
    :sswitch_141
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1b2

    .line 502
    const-string/jumbo v12, "photo_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 503
    .local v8, "photoId":J
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showActionBar(Z)V

    .line 505
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v12}, Lcom/airbnb/android/views/PhotoRearranger;->removeSelectedPhoto()V

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updatePhotoCount()V

    .line 508
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v12}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v12

    if-eqz v12, :cond_1ae

    const-string/jumbo v5, "ml_post_list"

    .line 509
    .restart local v5    # "mixPanelListingState":Ljava/lang/String;
    :goto_16e
    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    sget-object v14, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v14, v14, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "photos"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "photo_home"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "photo_delete"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const-string/jumbo v14, "1"

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 511
    new-instance v6, Lcom/airbnb/android/models/Photo;

    invoke-direct {v6, v8, v9}, Lcom/airbnb/android/models/Photo;-><init>(J)V

    .line 512
    .local v6, "photo":Lcom/airbnb/android/models/Photo;
    invoke-virtual {v6}, Lcom/airbnb/android/models/Photo;->markForDeletion()V

    .line 514
    new-instance v10, Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    .local v10, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Photo;>;"
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->executeListingPhotoUpdate(Ljava/util/List;)V

    goto/16 :goto_6

    .line 508
    .end local v5    # "mixPanelListingState":Ljava/lang/String;
    .end local v6    # "photo":Lcom/airbnb/android/models/Photo;
    .end local v10    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Photo;>;"
    :cond_1ae
    const-string/jumbo v5, "ml_pre_list"

    goto :goto_16e

    .line 518
    .end local v8    # "photoId":J
    :cond_1b2
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showActionBar(Z)V

    .line 519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v12}, Lcom/airbnb/android/views/PhotoRearranger;->resetSelectedPhoto()V

    goto/16 :goto_6

    .line 370
    nop

    :sswitch_data_1c2
    .sparse-switch
        0x1 -> :sswitch_7d
        0x2 -> :sswitch_16
        0x3 -> :sswitch_a7
        0x4 -> :sswitch_141
        0x12f -> :sswitch_128
        0x3e1 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const-string/jumbo v1, "ManagePhotosFragment"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "ManagePhotosFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_7a

    .line 146
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "listing"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 149
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->setHasOptionsMenu(Z)V

    .line 151
    if-eqz p1, :cond_46

    .line 152
    const-string/jumbo v1, "photo_from_camera"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "photoFromCamera":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 154
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    .line 156
    :cond_3b
    const-string/jumbo v1, "listing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 159
    :cond_46
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getProPhotoStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 161
    new-instance v1, Lcom/airbnb/android/requests/ProPhotoRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/requests/ProPhotoRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1}, Lcom/airbnb/android/requests/ProPhotoRequest;->execute()V

    .line 178
    :cond_69
    sget-object v1, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v2, "photos_home"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackImpression(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "photoFromCamera":Ljava/lang/String;
    :catch_7a
    move-exception v1

    const/4 v1, 0x0

    :try_start_7c
    const-string/jumbo v2, "ManagePhotosFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_83} :catch_7a

    goto :goto_f
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 531
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 532
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100018

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 533
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PhotoRearranger;->startMultiSelect()V

    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 240
    const v1, 0x7f100015

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 241
    const v1, 0x7f080535

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/CameraHelper;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 242
    const v1, 0x7f08054c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->AVAILABLE:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    iget-object v2, v2, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getProPhotoStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 243
    const v1, 0x7f08054d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->REQUESTED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    iget-object v2, v2, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getProPhotoStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 245
    const v1, 0x7f08054b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mEditCaptionsItem:Landroid/view/MenuItem;

    .line 246
    const v1, 0x7f080545

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosItem:Landroid/view/MenuItem;

    .line 248
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    const/4 v0, 0x1

    .line 249
    .local v0, "visible":Z
    :goto_6b
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mEditCaptionsItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 250
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 252
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 253
    return-void

    .line 248
    .end local v0    # "visible":Z
    :cond_79
    const/4 v0, 0x0

    goto :goto_6b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v4, "ManagePhotosFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_c} :catch_95

    .line 203
    :goto_c
    const v1, 0x7f0300b9

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoPrompt:Landroid/view/View;

    .line 206
    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoPrompt:Landroid/view/View;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a0

    move v1, v2

    :goto_2b
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoPromptIcon:Landroid/view/View;

    .line 209
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoPromptIcon:Landroid/view/View;

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a2

    :goto_45
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    const v1, 0x7f0801bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/PhotoRearranger;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    .line 212
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/views/PhotoRearranger;->setDragAndDropListener(Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;)V

    .line 213
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/views/PhotoRearranger;->setMultiSelectListener(Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;)V

    .line 214
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/views/PhotoRearranger;->setSingleSelectListener(Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;)V

    .line 217
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PhotoRearranger;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 229
    if-eqz p3, :cond_91

    const-string/jumbo v1, "remove_photos_mode"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 230
    const-string/jumbo v1, "multi_select_count"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mMultiSelectCount:I

    .line 231
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    .line 232
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updateSelectionCount()V

    .line 235
    :cond_91
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "view":Landroid/view/View;
    :catch_95
    move-exception v1

    const/4 v1, 0x0

    :try_start_97
    const-string/jumbo v4, "ManagePhotosFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_9e} :catch_95

    goto/16 :goto_c

    .restart local v0    # "view":Landroid/view/View;
    :cond_a0
    move v1, v3

    .line 206
    goto :goto_2b

    :cond_a2
    move v2, v3

    .line 209
    goto :goto_45
.end method

.method public onDeselect()V
    .registers 2

    .prologue
    .line 655
    iget v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mMultiSelectCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mMultiSelectCount:I

    .line 656
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updateSelectionCount()V

    .line 657
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 198
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    .line 574
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mMultiSelectCount:I

    .line 575
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PhotoRearranger;->endMultiSelect()V

    .line 576
    return-void
.end method

.method public onDragStart()V
    .registers 2

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showActionBar(Z)V

    .line 581
    return-void
.end method

.method public onDrop(Z)V
    .registers 6
    .param p1, "orderModified"    # Z

    .prologue
    const/4 v0, 0x1

    .line 585
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showActionBar(Z)V

    .line 587
    if-eqz p1, :cond_29

    .line 588
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showProgressSpinner(Z)V

    .line 589
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updateLocalListing()V

    .line 590
    new-instance v0, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$8;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$8;-><init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;->execute()V

    .line 608
    :cond_29
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
    .line 636
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 637
    .local v0, "currentDialog":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 638
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v0, :cond_18

    .line 639
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 641
    :cond_18
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 642
    invoke-static {p1, p2}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->newInstance(J)Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;

    move-result-object v1

    .line 643
    .local v1, "dialog":Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;
    const/4 v3, 0x4

    invoke-virtual {v1, p0, v3}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 644
    const-string/jumbo v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/managelisting/PhotoDeletionConfirmationDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 15
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v6, 0x1

    .line 266
    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string/jumbo v2, "ml_post_list"

    .line 268
    .local v2, "mixPanelListingState":Ljava/lang/String;
    :goto_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_1b4

    .line 326
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_1b
    return v6

    .line 266
    .end local v2    # "mixPanelListingState":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v2, "ml_pre_list"

    goto :goto_10

    .line 270
    .restart local v2    # "mixPanelListingState":Ljava/lang/String;
    :sswitch_20
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    sget-object v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v8, v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v8, v7, v11

    aput-object v2, v7, v6

    const-string/jumbo v8, "photos"

    aput-object v8, v7, v9

    const-string/jumbo v8, "photo_home"

    aput-object v8, v7, v10

    const-string/jumbo v8, "gallery_icon_click"

    aput-object v8, v7, v12

    invoke-static {v7}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/airbnb/android/utils/PhotoUtils;->getMultiPhotoIntent()Landroid/content/Intent;

    move-result-object v1

    .line 273
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v9}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1b

    .line 277
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_45
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    sget-object v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v8, v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v8, v7, v11

    aput-object v2, v7, v6

    const-string/jumbo v8, "photos"

    aput-object v8, v7, v9

    const-string/jumbo v8, "photo_home"

    aput-object v8, v7, v10

    const-string/jumbo v8, "camera_icon_click"

    aput-object v8, v7, v12

    invoke-static {v7}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 279
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Airbnb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "parentPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v4, "parent":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "outPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    .line 286
    const-string/jumbo v7, "output"

    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v1, v6}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 292
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "outPath":Ljava/lang/String;
    .end local v4    # "parent":Ljava/io/File;
    .end local v5    # "parentPath":Ljava/lang/String;
    :sswitch_dd
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    sget-object v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v8, v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v8, v7, v11

    aput-object v2, v7, v6

    const-string/jumbo v8, "photos"

    aput-object v8, v7, v9

    const-string/jumbo v8, "photo_home"

    aput-object v8, v7, v10

    const-string/jumbo v8, "over_flow_menu"

    aput-object v8, v7, v12

    const/4 v8, 0x5

    const-string/jumbo v9, "remove_photos_click"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v7

    iput-object v7, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    .line 295
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updateSelectionCount()V

    goto/16 :goto_1b

    .line 299
    :sswitch_10f
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    sget-object v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v8, v8, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v8, v7, v11

    aput-object v2, v7, v6

    const-string/jumbo v8, "photos"

    aput-object v8, v7, v9

    const-string/jumbo v8, "photo_home"

    aput-object v8, v7, v10

    const-string/jumbo v8, "over_flow_menu"

    aput-object v8, v7, v12

    const/4 v8, 0x5

    const-string/jumbo v9, "edit_captions_click"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updateLocalListing()V

    .line 302
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v7, v8}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->intentForEdit(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v0

    .line 303
    .local v0, "captionEditIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v10}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 307
    .end local v0    # "captionEditIntent":Landroid/content/Intent;
    :sswitch_144
    sget-object v7, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v8, "photos_home"

    const-string/jumbo v9, "get_photography_click"

    invoke-static {v7, v8, v9}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackClick(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v8

    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/airbnb/android/activities/ProPhotographyActivity;->getIntentForListing(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x12f

    invoke-virtual {p0, v7, v8}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 315
    :sswitch_16a
    sget-object v7, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v8, "photos_home"

    const-string/jumbo v9, "cancel_photography_click"

    invoke-static {v7, v8, v9}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackClick(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v7, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v8, "cancel_request"

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackImpression(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v7

    const v8, 0x7f0e05dc

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v7

    const v8, 0x7f0e05de

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v10}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v7

    const v8, 0x7f0e05dd

    const/16 v9, 0x3e1

    invoke-virtual {v7, v8, v9, p0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v7

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 268
    :sswitch_data_1b4
    .sparse-switch
        0x7f080535 -> :sswitch_45
        0x7f080545 -> :sswitch_dd
        0x7f08054a -> :sswitch_20
        0x7f08054b -> :sswitch_10f
        0x7f08054c -> :sswitch_144
        0x7f08054d -> :sswitch_16a
    .end sparse-switch
.end method

.method public onPhotoUploadComplete(Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 617
    iget-object v1, p1, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;->mListing:Lcom/airbnb/android/models/Listing;

    if-nez v1, :cond_50

    .line 618
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 619
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e0500

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 620
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    iget v2, p1, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;->mCount:I

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/PhotoRearranger;->removePendingPhoto(I)V

    .line 627
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string/jumbo v0, "ml_post_list"

    .line 628
    .local v0, "mixPanelListingState":Ljava/lang/String;
    :goto_2b
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "photos"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "photo_home"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "photos_added"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updatePhotoCount()V

    .line 631
    return-void

    .line 623
    .end local v0    # "mixPanelListingState":Ljava/lang/String;
    :cond_50
    iget-object v1, p1, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;->mListing:Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 624
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoRearranger:Lcom/airbnb/android/views/PhotoRearranger;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/PhotoRearranger;->setPhotoable(Lcom/airbnb/android/interfaces/Photoable;)V

    goto :goto_20

    .line 627
    :cond_5c
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_2b
.end method

.method public onPhotoUploadStarted(Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadStartedEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->showProgressSpinner(Z)V

    .line 613
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    if-eqz v0, :cond_13

    .line 187
    const-string/jumbo v0, "photo_from_camera"

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mPhotoFromCamera:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_13
    const-string/jumbo v0, "listing"

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    const-string/jumbo v1, "remove_photos_mode"

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mRemovePhotosMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string/jumbo v0, "multi_select_count"

    iget v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mMultiSelectCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    return-void

    .line 191
    :cond_2f
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public onSelect()V
    .registers 2

    .prologue
    .line 649
    iget v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mMultiSelectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mMultiSelectCount:I

    .line 650
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updateSelectionCount()V

    .line 651
    return-void
.end method

.method public onSelect(I)V
    .registers 8
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x3

    .line 661
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updateLocalListing()V

    .line 663
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v1, "ml_post_list"

    .line 664
    .local v1, "mixPanelListingState":Ljava/lang/String;
    :goto_f
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "photos"

    aput-object v4, v2, v3

    const-string/jumbo v3, "photo_home"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    const-string/jumbo v4, "photo_tap"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v2, v3, p1}, Lcom/airbnb/android/activities/ManageCaptionsActivity;->intentForPhoto(Landroid/content/Context;Lcom/airbnb/android/models/Listing;I)Landroid/content/Intent;

    move-result-object v0

    .line 667
    .local v0, "captionEditIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 668
    return-void

    .line 663
    .end local v0    # "captionEditIntent":Landroid/content/Intent;
    .end local v1    # "mixPanelListingState":Ljava/lang/String;
    :cond_47
    const-string/jumbo v1, "ml_pre_list"

    goto :goto_f
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
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 107
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->updatePhotoCount()V

    .line 108
    return-void
.end method

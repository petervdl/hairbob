.class public Lcom/airbnb/android/fragments/groups/NewContentFragment;
.super Landroid/support/v4/app/Fragment;
.source "NewContentFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/groups/NewContentFragment$ContentCreatedEvent;
    }
.end annotation


# static fields
.field private static final ARGS_CONTENT:Ljava/lang/String; = "content"

.field public static final ARGS_GROUP:Ljava/lang/String; = "group"

.field private static final ARGS_PHOTO_FROM_CAMERA:Ljava/lang/String; = "photo_from_camera"

.field private static final REQUEST_CODE_SELECT_PICTURE:I = 0x2

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x1


# instance fields
.field private final TITLE_CHAR_LIMIT:I

.field private mBaseContent:Lcom/airbnb/android/models/groups/BaseContent;

.field private mBody:Landroid/widget/EditText;

.field private mContent:Lcom/airbnb/android/models/groups/Content;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mPendingCount:I

.field private mPhotoCount:Landroid/widget/TextView;

.field private mPhotoFromCamera:Ljava/io/File;

.field private mPhotoStrip:Lcom/airbnb/android/views/FixedPhotostripView;

.field private mSubmit:Landroid/view/MenuItem;

.field private mTextRemaining:Landroid/widget/TextView;

.field private mTextRemainingContainer:Landroid/view/View;

.field private mTitle:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    const/16 v0, 0x64

    iput v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->TITLE_CHAR_LIMIT:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPendingCount:I

    .line 428
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBaseContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/airbnb/android/fragments/groups/NewContentFragment;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBaseContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object p1
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/groups/NewContentFragment;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBody:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Lcom/airbnb/android/models/groups/Content;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTextRemainingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->setRemainingTitleCharacters()V

    return-void
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->hasValidContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/groups/NewContentFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->updateSubmitButton(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getPhotoFromCamera()V

    return-void
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/NewContentFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getPhotoFromGallery()V

    return-void
.end method

.method private getPhoto()V
    .registers 5

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 318
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_7

    .line 341
    :goto_6
    return-void

    .line 321
    :cond_7
    invoke-static {v0}, Lcom/airbnb/android/utils/CameraHelper;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 322
    .local v1, "hasCamera":Z
    if-eqz v1, :cond_1f

    .line 323
    new-instance v2, Lcom/airbnb/android/fragments/groups/NewContentFragment$6;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment$6;-><init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    new-instance v3, Lcom/airbnb/android/fragments/groups/NewContentFragment$7;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment$7;-><init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    invoke-static {v0, v2, v3}, Lcom/airbnb/android/utils/PhotoUtils;->createPhotoDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_6

    .line 339
    :cond_1f
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getPhotoFromGallery()V

    goto :goto_6
.end method

.method private getPhotoFromCamera()V
    .registers 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Content;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/android/utils/CameraHelper;->getCameraFile(I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoFromCamera:Ljava/io/File;

    .line 350
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoFromCamera:Ljava/io/File;

    invoke-static {v1}, Lcom/airbnb/android/utils/CameraHelper;->getCameraIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 352
    return-void
.end method

.method private getPhotoFromGallery()V
    .registers 3

    .prologue
    .line 344
    invoke-static {}, Lcom/airbnb/android/utils/PhotoUtils;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v0

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 346
    return-void
.end method

.method private getSpannableString(II)Landroid/text/Spannable;
    .registers 8
    .param p1, "num"    # I
    .param p2, "pluralId"    # I

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p2, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "pluralString":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->makeBold(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    return-object v1
.end method

.method private hasValidContent()Z
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->isTextEntered(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method private isTextEntered(Landroid/widget/EditText;)Z
    .registers 5
    .param p1, "field"    # Landroid/widget/EditText;

    .prologue
    const/4 v1, 0x0

    .line 470
    if-nez p1, :cond_4

    .line 474
    :cond_3
    :goto_3
    return v1

    .line 473
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/NewContentFragment;
    .registers 4
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "group"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    new-instance v1, Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;-><init>()V

    .line 88
    .local v1, "fragment":Lcom/airbnb/android/fragments/groups/NewContentFragment;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v1
.end method

.method private refreshEditTexts()V
    .registers 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 181
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_10

    .line 182
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboardIfFocused(Landroid/content/Context;Landroid/view/View;)V

    .line 183
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBody:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboardIfFocused(Landroid/content/Context;Landroid/view/View;)V

    .line 185
    :cond_10
    return-void
.end method

.method private refreshPhotoView()V
    .registers 13

    .prologue
    const v11, 0x7f0d0013

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 188
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoStrip:Lcom/airbnb/android/views/FixedPhotostripView;

    if-eqz v4, :cond_6a

    .line 189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v3, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPendingCount:I

    add-int v1, v4, v5

    .line 191
    .local v1, "numPhotos":I
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v11, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Content;->hasPhotos()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 193
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Photo;

    .line 194
    .local v2, "photo":Lcom/airbnb/android/models/Photo;
    invoke-virtual {v2}, Lcom/airbnb/android/models/Photo;->getPictureUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 196
    .end local v2    # "photo":Lcom/airbnb/android/models/Photo;
    :cond_59
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoStrip:Lcom/airbnb/android/views/FixedPhotostripView;

    iget v5, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPendingCount:I

    invoke-virtual {v4, v3, v5}, Lcom/airbnb/android/views/FixedPhotostripView;->setImageUrls(Ljava/util/List;I)V

    .line 197
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoStrip:Lcom/airbnb/android/views/FixedPhotostripView;

    invoke-virtual {v4, v8}, Lcom/airbnb/android/views/FixedPhotostripView;->setVisibility(I)V

    .line 198
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoCount:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "numPhotos":I
    .end local v3    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6a
    :goto_6a
    return-void

    .line 199
    .restart local v1    # "numPhotos":I
    .restart local v3    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6b
    iget v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPendingCount:I

    if-lez v4, :cond_96

    .line 200
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v11, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoStrip:Lcom/airbnb/android/views/FixedPhotostripView;

    iget v5, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPendingCount:I

    invoke-virtual {v4, v3, v5}, Lcom/airbnb/android/views/FixedPhotostripView;->setImageUrls(Ljava/util/List;I)V

    .line 202
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoStrip:Lcom/airbnb/android/views/FixedPhotostripView;

    invoke-virtual {v4, v8}, Lcom/airbnb/android/views/FixedPhotostripView;->setVisibility(I)V

    .line 203
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoCount:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6a

    .line 205
    :cond_96
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoStrip:Lcom/airbnb/android/views/FixedPhotostripView;

    invoke-virtual {v4, v10}, Lcom/airbnb/android/views/FixedPhotostripView;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoCount:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6a
.end method

.method private setRemainingTitleCharacters()V
    .registers 5

    .prologue
    .line 452
    const-string/jumbo v1, ""

    .line 453
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 454
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 457
    .local v0, "num":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTextRemaining:Landroid/widget/TextView;

    const v3, 0x7f0d001b

    invoke-direct {p0, v0, v3}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getSpannableString(II)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    return-void
.end method

.method private showProgressSpinner(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 446
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_d

    .line 447
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 449
    :cond_d
    return-void
.end method

.method private updateSubmitButton(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mSubmit:Landroid/view/MenuItem;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 167
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mSubmit:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 168
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mSubmit:Landroid/view/MenuItem;

    const v1, 0x7f020210

    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->getSubmitColorResourceId(Z)I

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 170
    :cond_1f
    return-void
.end method


# virtual methods
.method public getContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBaseContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method public getGroup()Lcom/airbnb/android/models/groups/Group;
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 357
    packed-switch p1, :pswitch_data_32

    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 383
    :cond_8
    :goto_8
    return-void

    .line 359
    :pswitch_9
    if-ne p2, v1, :cond_8

    .line 360
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 361
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_8

    .line 362
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/PhotoUtils;->compressAndUploadGroupsPhotosFromUri(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 363
    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->showProgressSpinner(Z)V

    goto :goto_8

    .line 369
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1c
    if-ne p2, v1, :cond_8

    .line 370
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 371
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoFromCamera:Ljava/io/File;

    if-eqz v1, :cond_8

    .line 372
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoFromCamera:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/PhotoUtils;->compressAndUploadGroupsPhotos(Landroid/app/Activity;Ljava/io/File;)V

    .line 373
    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->showProgressSpinner(Z)V

    goto :goto_8

    .line 357
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const-string/jumbo v1, "NewContentFragment"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "NewContentFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_60

    .line 95
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->setHasOptionsMenu(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "group"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Group;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 98
    invoke-static {}, Lcom/airbnb/android/models/groups/Content;->forCreation()Lcom/airbnb/android/models/groups/Content;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 99
    if-eqz p1, :cond_57

    .line 100
    const-string/jumbo v1, "photo_from_camera"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "photoFromCamera":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 102
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoFromCamera:Ljava/io/File;

    .line 104
    :cond_41
    const-string/jumbo v1, "content"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Content;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 105
    const-string/jumbo v1, "group"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Group;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 107
    :cond_57
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "photoFromCamera":Ljava/lang/String;
    :catch_60
    move-exception v1

    const/4 v1, 0x0

    :try_start_62
    const-string/jumbo v2, "NewContentFragment#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_69} :catch_60

    goto :goto_f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 159
    const v0, 0x7f10000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    const v0, 0x7f08053e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mSubmit:Landroid/view/MenuItem;

    .line 161
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->hasValidContent()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->updateSubmitButton(Z)V

    .line 162
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 163
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "NewContentFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_a0

    .line 213
    :goto_a
    const v2, 0x7f03009b

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 215
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0801b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    .line 216
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    .line 217
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v5

    .line 218
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 219
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/groups/NewContentFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    const v2, 0x7f0801ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBody:Landroid/widget/EditText;

    .line 244
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBody:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/groups/NewContentFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 263
    const v2, 0x7f0801bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTextRemaining:Landroid/widget/TextView;

    .line 264
    const v2, 0x7f0801b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTextRemainingContainer:Landroid/view/View;

    .line 266
    const v2, 0x7f0801bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/FixedPhotostripView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoStrip:Lcom/airbnb/android/views/FixedPhotostripView;

    .line 267
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoStrip:Lcom/airbnb/android/views/FixedPhotostripView;

    new-instance v3, Lcom/airbnb/android/fragments/groups/NewContentFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment$3;-><init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/FixedPhotostripView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v2, 0x7f0801bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoCount:Landroid/widget/TextView;

    .line 280
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/groups/NewContentFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment$4;-><init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 292
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/fragments/groups/NewContentFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment$5;-><init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 311
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 312
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->refreshPhotoView()V

    .line 313
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "FilterArray":[Landroid/text/InputFilter;
    .end local v1    # "v":Landroid/view/View;
    :catch_a0
    move-exception v2

    const/4 v2, 0x0

    :try_start_a2
    const-string/jumbo v3, "NewContentFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_a9} :catch_a0

    goto/16 :goto_a
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 124
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public onNewContentUpdatedEvent(Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$NewContentUpdatedEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$NewContentUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p1, Lcom/airbnb/android/fragments/groups/ManagePostPhotosFragment$NewContentUpdatedEvent;->mContent:Lcom/airbnb/android/models/groups/Content;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 175
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->refreshPhotoView()V

    .line 176
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->refreshEditTexts()V

    .line 177
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 389
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_56

    .line 423
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_c
    return v2

    .line 391
    :pswitch_d
    const-string/jumbo v3, "tap_add_photo"

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v3, v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPost(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 392
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getPhoto()V

    goto :goto_c

    .line 396
    :pswitch_19
    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->showProgressSpinner(Z)V

    .line 397
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->updateSubmitButton(Z)V

    .line 398
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-static {v3, v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackSubmitPost(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Content;)V

    .line 399
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mBody:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/models/groups/Content;->of(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/airbnb/android/models/groups/Content;

    move-result-object v0

    .line 400
    .local v0, "newContent":Lcom/airbnb/android/models/groups/Content;
    new-instance v1, Lcom/airbnb/android/requests/groups/CreateContentRequest;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    new-instance v4, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment$8;-><init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    invoke-direct {v1, v3, v0, v4}, Lcom/airbnb/android/requests/groups/CreateContentRequest;-><init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Content;Lcom/airbnb/android/requests/RequestListener;)V

    .line 419
    .local v1, "request":Lcom/airbnb/android/requests/groups/CreateContentRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/groups/CreateContentRequest;->execute()V

    goto :goto_c

    .line 389
    nop

    :pswitch_data_56
    .packed-switch 0x7f08053d
        :pswitch_d
        :pswitch_19
    .end packed-switch
.end method

.method public onPhotoUploadComplete(Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string/jumbo v0, "photo_uploaded"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPost(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 144
    iget v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPendingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPendingCount:I

    .line 145
    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->showProgressSpinner(Z)V

    .line 146
    iget-object v0, p1, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;->mPhoto:Lcom/airbnb/android/models/Photo;

    if-nez v0, :cond_2e

    .line 147
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 148
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->refreshPhotoView()V

    .line 149
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0500

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    :cond_2d
    :goto_2d
    return-void

    .line 152
    :cond_2e
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    iget-object v1, p1, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;->mPhoto:Lcom/airbnb/android/models/Photo;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/Content;->addPhoto(Lcom/airbnb/android/models/Photo;)V

    .line 153
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->refreshPhotoView()V

    goto :goto_2d
.end method

.method public onPhotoUploadStarted(Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadStartedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 135
    const-string/jumbo v0, "photo_upload_started"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNewPost(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->showProgressSpinner(Z)V

    .line 137
    iget v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPendingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPendingCount:I

    .line 138
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->refreshPhotoView()V

    .line 139
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 130
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->hasValidContent()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->updateSubmitButton(Z)V

    .line 131
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoFromCamera:Ljava/io/File;

    if-eqz v0, :cond_13

    .line 115
    const-string/jumbo v0, "photo_from_camera"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mPhotoFromCamera:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_13
    const-string/jumbo v0, "content"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    const-string/jumbo v0, "group"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
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

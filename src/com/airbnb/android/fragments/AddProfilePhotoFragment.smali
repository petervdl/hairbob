.class public Lcom/airbnb/android/fragments/AddProfilePhotoFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "AddProfilePhotoFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/OnBackListener;


# static fields
.field private static final ARG_IS_INSTANT_BOOK:Ljava/lang/String; = "is_instant_book"

.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final REQUEST_CODE_CROP_PHOTO:I = 0x67

.field private static final REQUEST_CODE_PICK_FROM_GALLERY:I = 0x66

.field private static final REQUEST_CODE_TAKE_A_PHOTO:I = 0x65

.field private static final SAVED_IMAGE_URL:Ljava/lang/String; = "saved_image"

.field private static final TAG:Ljava/lang/String;

.field private static final imageFileName:Ljava/lang/String; = "profilePic.png"


# instance fields
.field mConfirmExistingPhotoLayout:Landroid/widget/LinearLayout;

.field private mCurrentUser:Lcom/airbnb/android/models/User;

.field mDescription:Landroid/widget/TextView;

.field mHostImage:Lcom/airbnb/android/views/HaloImageView;

.field mHostImageLayout:Landroid/view/View;

.field mHostName:Landroid/widget/TextView;

.field private mImageUrl:Ljava/lang/String;

.field private mIsInstantBook:Z

.field private mListing:Lcom/airbnb/android/models/Listing;

.field mMyImage:Lcom/airbnb/android/views/HaloImageView;

.field mMyName:Landroid/widget/TextView;

.field mTakeOrSelectPhotoLayout:Landroid/widget/LinearLayout;

.field mTopImage:Landroid/widget/ImageView;

.field mWelcome:Lcom/airbnb/android/views/AutoScaleTextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/AddProfilePhotoFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AddProfilePhotoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->cropPhoto(Ljava/lang/String;)V

    return-void
.end method

.method private cropPhoto(Ljava/lang/String;)V
    .registers 4
    .param p1, "uriPath"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/android/activities/CropPhotoActivity;->intentForUri(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method

.method public static forDefault()Lcom/airbnb/android/fragments/AddProfilePhotoFragment;
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;-><init>()V

    return-object v0
.end method

.method public static forListing(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/AddProfilePhotoFragment;
    .registers 5
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "isInstantBook"    # Z

    .prologue
    .line 70
    invoke-static {}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->forDefault()Lcom/airbnb/android/fragments/AddProfilePhotoFragment;

    move-result-object v1

    .line 71
    .local v1, "fragment":Lcom/airbnb/android/fragments/AddProfilePhotoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    const-string/jumbo v2, "is_instant_book"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v1
.end method

.method private showConfirmationLayout()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 208
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v2, :cond_39

    .line 209
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "hostName":Ljava/lang/String;
    const v2, 0x7f0e0045

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "string":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mDescription:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/airbnb/android/utils/MiscUtils;->makeBold(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .end local v0    # "hostName":Ljava/lang/String;
    .end local v1    # "string":Ljava/lang/String;
    :goto_26
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostImageLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mConfirmExistingPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mTakeOrSelectPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->updateHeaderText()V

    .line 220
    return-void

    .line 213
    :cond_39
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mDescription:Landroid/widget/TextView;

    const v3, 0x7f0e0046

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_26
.end method

.method private updateHeaderText()V
    .registers 6

    .prologue
    .line 148
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mConfirmExistingPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 149
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mWelcome:Lcom/airbnb/android/views/AutoScaleTextView;

    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AutoScaleTextView;->setText(I)V

    .line 157
    :goto_10
    return-void

    .line 151
    :cond_11
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v0, :cond_26

    .line 152
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mWelcome:Lcom/airbnb/android/views/AutoScaleTextView;

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mIsInstantBook:Z

    if-eqz v0, :cond_22

    const v0, 0x7f0e0049

    :goto_1e
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/AutoScaleTextView;->setText(I)V

    goto :goto_10

    :cond_22
    const v0, 0x7f0e004a

    goto :goto_1e

    .line 154
    :cond_26
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mWelcome:Lcom/airbnb/android/views/AutoScaleTextView;

    const v1, 0x7f0e004b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 161
    const/4 v2, -0x1

    if-ne p2, v2, :cond_9

    .line 162
    packed-switch p1, :pswitch_data_5a

    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 205
    :cond_9
    :goto_9
    return-void

    .line 165
    :pswitch_a
    :try_start_a
    const-string/jumbo v2, "profilePic.png"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/CameraHelper;->getTempFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->cropPhoto(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_20} :catch_21

    goto :goto_9

    .line 167
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_21
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 173
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :pswitch_2c
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 174
    .restart local v1    # "uri":Landroid/net/Uri;
    new-instance v2, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$1;-><init>(Lcom/airbnb/android/fragments/AddProfilePhotoFragment;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    instance-of v4, v2, Landroid/os/AsyncTask;

    if-nez v4, :cond_40

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_9

    :cond_40
    check-cast v2, Landroid/os/AsyncTask;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_9

    .line 195
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_46
    const-string/jumbo v2, "photo_url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mImageUrl:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyImage:Lcom/airbnb/android/views/HaloImageView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->showConfirmationLayout()V

    goto :goto_9

    .line 162
    :pswitch_data_5a
    .packed-switch 0x65
        :pswitch_a
        :pswitch_2c
        :pswitch_46
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mConfirmExistingPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 247
    const-string/jumbo v0, "dismiss"

    invoke-static {v0}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackProfilePhotoConfirmation(Ljava/lang/String;)V

    .line 252
    :goto_e
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_10
    const-string/jumbo v0, "dismiss"

    invoke-static {v0}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackProfilePhotoPrompt(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public onChangePhotoClick()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 257
    const-string/jumbo v3, "change_profile_photo"

    invoke-static {v3}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackProfilePhotoConfirmation(Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mConfirmExistingPhotoLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mTakeOrSelectPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyImage:Lcom/airbnb/android/views/HaloImageView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 265
    iget-object v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v3, :cond_4e

    .line 266
    iget-object v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "host":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mIsInstantBook:Z

    if-eqz v3, :cond_4a

    const v2, 0x7f0e0047

    .line 268
    .local v2, "textRes":I
    :goto_2f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "string":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mDescription:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/airbnb/android/utils/MiscUtils;->makeBold(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostImageLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "string":Ljava/lang/String;
    .end local v2    # "textRes":I
    :goto_46
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->updateHeaderText()V

    .line 276
    return-void

    .line 267
    .restart local v0    # "host":Ljava/lang/String;
    :cond_4a
    const v2, 0x7f0e0044

    goto :goto_2f

    .line 272
    .end local v0    # "host":Ljava/lang/String;
    :cond_4e
    iget-object v3, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mDescription:Landroid/widget/TextView;

    const v4, 0x7f0e0043

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_46
.end method

.method public onConfirmPhotoClick()V
    .registers 3

    .prologue
    .line 236
    const-string/jumbo v1, "confirm_profile_photo"

    invoke-static {v1}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackProfilePhotoConfirmation(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 238
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_13

    .line 239
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 240
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 242
    :cond_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    if-eqz p1, :cond_e

    .line 83
    const-string/jumbo v0, "saved_image"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mImageUrl:Ljava/lang/String;

    .line 85
    :cond_e
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 96
    const v5, 0x7f030069

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 97
    .local v4, "view":Landroid/view/View;
    invoke-static {p0, v4}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 100
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v8, "listing"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Listing;

    iput-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 101
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v8, "is_instant_book"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mIsInstantBook:Z

    .line 104
    :cond_2f
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/activities/AirActivity;

    const v8, 0x7f0e004f

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 106
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    .line 107
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyImage:Lcom/airbnb/android/views/HaloImageView;

    iget-object v8, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5, v8}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 108
    iget-object v8, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mConfirmExistingPhotoLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v5

    if-eqz v5, :cond_df

    move v5, v6

    :goto_5d
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v8, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mTakeOrSelectPhotoLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v5

    if-eqz v5, :cond_e2

    move v5, v7

    :goto_6b
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v5, :cond_f2

    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v8, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mTopImage:Landroid/widget/ImageView;

    const v9, 0x7f0200da

    invoke-static {v5, v8, v9}, Lcom/airbnb/android/utils/MiscUtils;->setImageResource565(Landroid/content/res/Resources;Landroid/widget/ImageView;I)V

    .line 113
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 114
    .local v1, "host":Lcom/airbnb/android/models/User;
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "hostName":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v5, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 117
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostName:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v5

    if-eqz v5, :cond_e4

    .line 120
    const v0, 0x7f0e0045

    .line 124
    .local v0, "descId":I
    :goto_a3
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "string":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mDescription:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/airbnb/android/utils/MiscUtils;->makeBold(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostImageLayout:Landroid/view/View;

    iget-object v8, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v8}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v8

    if-eqz v8, :cond_f0

    :goto_bf
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .end local v0    # "descId":I
    .end local v1    # "host":Lcom/airbnb/android/models/User;
    .end local v2    # "hostName":Ljava/lang/String;
    .end local v3    # "string":Ljava/lang/String;
    :goto_cd
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->updateHeaderText()V

    .line 139
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mImageUrl:Ljava/lang/String;

    if-eqz v5, :cond_de

    .line 140
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyImage:Lcom/airbnb/android/views/HaloImageView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->showConfirmationLayout()V

    .line 144
    :cond_de
    return-object v4

    :cond_df
    move v5, v7

    .line 108
    goto/16 :goto_5d

    :cond_e2
    move v5, v6

    .line 109
    goto :goto_6b

    .line 122
    .restart local v1    # "host":Lcom/airbnb/android/models/User;
    .restart local v2    # "hostName":Ljava/lang/String;
    :cond_e4
    iget-boolean v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mIsInstantBook:Z

    if-eqz v5, :cond_ec

    const v0, 0x7f0e0047

    .restart local v0    # "descId":I
    :goto_eb
    goto :goto_a3

    .end local v0    # "descId":I
    :cond_ec
    const v0, 0x7f0e0044

    goto :goto_eb

    .restart local v0    # "descId":I
    .restart local v3    # "string":Ljava/lang/String;
    :cond_f0
    move v7, v6

    .line 127
    goto :goto_bf

    .line 130
    .end local v0    # "descId":I
    .end local v1    # "host":Lcom/airbnb/android/models/User;
    .end local v2    # "hostName":Ljava/lang/String;
    .end local v3    # "string":Ljava/lang/String;
    :cond_f2
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mTopImage:Landroid/widget/ImageView;

    const v6, 0x7f02020d

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mMyName:Landroid/widget/TextView;

    const v6, 0x7f0e085d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mHostImageLayout:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v6, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mDescription:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mCurrentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v5

    if-eqz v5, :cond_118

    const v5, 0x7f0e0046

    :goto_114
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_cd

    :cond_118
    const v5, 0x7f0e0043

    goto :goto_114
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string/jumbo v0, "saved_image"

    iget-object v1, p0, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onSelectPhotoClick()V
    .registers 3

    .prologue
    .line 230
    const-string/jumbo v0, "choose_from_photos"

    invoke-static {v0}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackProfilePhotoPrompt(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/airbnb/android/utils/PhotoUtils;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    return-void
.end method

.method public onTakePhotoClick()V
    .registers 4

    .prologue
    .line 224
    const-string/jumbo v0, "take_photo"

    invoke-static {v0}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->trackProfilePhotoPrompt(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v0, "profilePic.png"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/utils/CameraHelper;->getPhotoIntent(Ljava/lang/String;Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/AddProfilePhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    return-void
.end method

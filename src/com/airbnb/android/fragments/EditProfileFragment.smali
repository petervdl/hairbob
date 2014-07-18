.class public Lcom/airbnb/android/fragments/EditProfileFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "EditProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/EditProfileFragment$8;
    }
.end annotation


# static fields
.field private static final DIALOG_REQ_UPDATE_PROFILE_PIC_CAMERA:I = 0x1e1

.field private static final DIALOG_REQ_UPDATE_PROFILE_PIC_GALLERY:I = 0x1e2

.field private static final REQUEST_ACTIVITY_CAMERA:I = 0x2bf

.field private static final REQUEST_ACTIVITY_GALLERY:I = 0x2c0

.field private static final REQUEST_PROCEED_UPDATE_EMAIL:I = 0x1e9

.field private static final REQUEST_PROFILE_PHOTO:I = 0x2c1

.field private static final imageFileName:Ljava/lang/String; = "profilePic.png"


# instance fields
.field mBtnEditAboutMe:Landroid/view/View;

.field mBtnEditName:Landroid/view/View;

.field private mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;

.field mOptionalSections:Lcom/airbnb/android/views/LinearListView;

.field private mOptionalSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

.field mPrivateSections:Lcom/airbnb/android/views/LinearListView;

.field private mPrivateSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

.field mProfileImage:Lcom/airbnb/android/views/AirImageView;

.field private mScrollValue:I

.field mScrollView:Landroid/widget/ScrollView;

.field mTxtAboutMe:Landroid/widget/TextView;

.field private mUser:Lcom/airbnb/android/models/User;

.field mUserNameTextView:Lcom/airbnb/android/views/AirTextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/EditProfileFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileFragment;

    .prologue
    .line 61
    iget v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mScrollValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/interfaces/EditProfileInterface;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/EditProfileFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->handleGender()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/EditProfileFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->handleBirthDate()V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/EditProfileFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->handleEmail()V

    return-void
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/EditProfileFragment;)Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/EditProfileFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->handleLanguages()V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/EditProfileFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/EditProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/EditProfileFragment;->cropPhoto(Ljava/lang/String;)V

    return-void
.end method

.method private cropPhoto(Ljava/lang/String;)V
    .registers 4
    .param p1, "uriPath"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/android/activities/CropPhotoActivity;->intentForUri(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2c1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 300
    return-void
.end method

.method private handleBirthDate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 332
    const-string/jumbo v3, "click"

    const-string/jumbo v4, "birthdate"

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 333
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 334
    .local v1, "currentUser":Lcom/airbnb/android/models/User;
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getBirthdate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getBirthdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v0

    .line 336
    .local v0, "birthday":Ljava/util/Calendar;
    :goto_28
    invoke-static {v0, p0}, Lcom/airbnb/android/fragments/DatePickerDialog;->newInstance(Ljava/util/Calendar;Landroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/DatePickerDialog;

    move-result-object v2

    .line 337
    .local v2, "dialog":Lcom/airbnb/android/fragments/DatePickerDialog;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/airbnb/android/fragments/DatePickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 338
    return-void

    .line 334
    .end local v0    # "birthday":Ljava/util/Calendar;
    .end local v2    # "dialog":Lcom/airbnb/android/fragments/DatePickerDialog;
    :cond_34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_28
.end method

.method private handleEmail()V
    .registers 7

    .prologue
    .line 341
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0181

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/4 v2, 0x0

    const v3, 0x7f0e0134

    const/16 v4, 0x1e9

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method private handleGalleryPhoto(Landroid/net/Uri;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 303
    new-instance v0, Lcom/airbnb/android/fragments/EditProfileFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/fragments/EditProfileFragment$7;-><init>(Lcom/airbnb/android/fragments/EditProfileFragment;Landroid/net/Uri;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_12

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/EditProfileFragment$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 321
    :goto_11
    return-void

    .line 303
    :cond_12
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method

.method private handleGender()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 324
    const-string/jumbo v2, "click"

    const-string/jumbo v3, "gender"

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 325
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->findGender(Ljava/lang/String;)Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    move-result-object v0

    .line 326
    .local v0, "currGender":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    invoke-static {v0}, Lcom/airbnb/android/fragments/GenderSelectionFragment;->newInstance(Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;)Lcom/airbnb/android/fragments/GenderSelectionFragment;

    move-result-object v1

    .line 327
    .local v1, "dialogFragment":Lcom/airbnb/android/fragments/GenderSelectionFragment;
    const/16 v2, 0x2bd

    invoke-virtual {v1, p0, v2}, Lcom/airbnb/android/fragments/GenderSelectionFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 328
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/airbnb/android/fragments/GenderSelectionFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private handleLanguages()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 347
    const-string/jumbo v1, "click"

    const-string/jumbo v2, "languages"

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 348
    invoke-static {}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->newInstance()Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    move-result-object v0

    .line 349
    .local v0, "dialogFragment":Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;
    const/16 v1, 0x2be

    invoke-virtual {v0, p0, v1}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 350
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .registers 1

    .prologue
    .line 90
    new-instance v0, Lcom/airbnb/android/fragments/EditProfileFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/EditProfileFragment;-><init>()V

    return-object v0
.end method

.method private selectPhoto()V
    .registers 3

    .prologue
    .line 291
    invoke-static {}, Lcom/airbnb/android/utils/PhotoUtils;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2c0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 292
    return-void
.end method

.method private takePhoto()V
    .registers 4

    .prologue
    .line 295
    const-string/jumbo v0, "profilePic.png"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/utils/CameraHelper;->getPhotoIntent(Ljava/lang/String;Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2bf

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 296
    return-void
.end method

.method private updateProfile(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)V
    .registers 5
    .param p1, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Lcom/airbnb/android/requests/EditProfileRequest;

    new-instance v1, Lcom/airbnb/android/fragments/EditProfileFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/EditProfileFragment$6;-><init>(Lcom/airbnb/android/fragments/EditProfileFragment;Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/airbnb/android/requests/EditProfileRequest;-><init>(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 287
    .local v0, "request":Lcom/airbnb/android/requests/EditProfileRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/EditProfileRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 288
    return-void
.end method

.method private updateSpokenLanguages(Landroid/content/Intent;)V
    .registers 12
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 354
    const-string/jumbo v5, "spoken_languages"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 356
    .local v4, "updatedLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/SpokenLanguage;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .local v3, "languageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/SpokenLanguage;

    .line 358
    .local v2, "language":Lcom/airbnb/android/models/SpokenLanguage;
    invoke-virtual {v2}, Lcom/airbnb/android/models/SpokenLanguage;->isSpoken()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 359
    invoke-virtual {v2}, Lcom/airbnb/android/models/SpokenLanguage;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 362
    .end local v2    # "language":Lcom/airbnb/android/models/SpokenLanguage;
    :cond_32
    const-string/jumbo v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "idAsString":Ljava/lang/String;
    sget-object v5, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Languages:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-direct {p0, v5, v1}, Lcom/airbnb/android/fragments/EditProfileFragment;->updateProfile(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v5, "update"

    const-string/jumbo v6, "languages"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    const-string/jumbo v8, "num_languages"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 365
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 209
    const/4 v6, -0x1

    if-ne p2, v6, :cond_7

    .line 210
    sparse-switch p1, :sswitch_data_a8

    .line 262
    :cond_7
    :goto_7
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 263
    return-void

    .line 212
    :sswitch_b
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->takePhoto()V

    goto :goto_7

    .line 216
    :sswitch_f
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->selectPhoto()V

    goto :goto_7

    .line 220
    :sswitch_13
    :try_start_13
    const-string/jumbo v6, "profilePic.png"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/airbnb/android/utils/CameraHelper;->getTempFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 221
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/airbnb/android/fragments/EditProfileFragment;->cropPhoto(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_29} :catch_2a

    goto :goto_7

    .line 222
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_2a
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_7

    .line 228
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :sswitch_2c
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 229
    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v5}, Lcom/airbnb/android/fragments/EditProfileFragment;->handleGalleryPhoto(Landroid/net/Uri;)V

    goto :goto_7

    .line 233
    .end local v5    # "uri":Landroid/net/Uri;
    :sswitch_34
    const-string/jumbo v6, "photo_url"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "photoUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 235
    iget-object v6, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v6, v2}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v6, "update"

    const-string/jumbo v7, "photo"

    invoke-static {v6, v7, v8}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_7

    .line 240
    .end local v2    # "photoUrl":Ljava/lang/String;
    :sswitch_50
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "date"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 241
    .local v3, "updatedBirthDate":Ljava/util/Calendar;
    const/4 v6, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/text/SimpleDateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 242
    .local v1, "format":Ljava/text/DateFormat;
    sget-object v6, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->BirthDate:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/airbnb/android/fragments/EditProfileFragment;->updateProfile(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v6, "update"

    const-string/jumbo v7, "birthdate"

    invoke-static {v6, v7, v8}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_7

    .line 247
    .end local v1    # "format":Ljava/text/DateFormat;
    .end local v3    # "updatedBirthDate":Ljava/util/Calendar;
    :sswitch_7d
    const-string/jumbo v6, "new_gender"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    .line 248
    .local v4, "updatedGender":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    sget-object v6, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Gender:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v4}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->getJsonValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/airbnb/android/fragments/EditProfileFragment;->updateProfile(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v6, "update"

    const-string/jumbo v7, "gender"

    invoke-static {v6, v7, v8}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto/16 :goto_7

    .line 253
    .end local v4    # "updatedGender":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    :sswitch_9a
    invoke-direct {p0, p3}, Lcom/airbnb/android/fragments/EditProfileFragment;->updateSpokenLanguages(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 257
    :sswitch_9f
    iget-object v6, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;

    sget-object v7, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Email:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-interface {v6, v7}, Lcom/airbnb/android/interfaces/EditProfileInterface;->onProfileSectionSelected(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    goto/16 :goto_7

    .line 210
    :sswitch_data_a8
    .sparse-switch
        0x1e1 -> :sswitch_b
        0x1e2 -> :sswitch_f
        0x1e9 -> :sswitch_9f
        0x2bd -> :sswitch_7d
        0x2be -> :sswitch_9a
        0x2bf -> :sswitch_13
        0x2c0 -> :sswitch_2c
        0x2c1 -> :sswitch_34
        0x7d2 -> :sswitch_50
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    instance-of v0, p1, Lcom/airbnb/android/interfaces/EditProfileInterface;

    if-nez v0, :cond_2f

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/EditProfileInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2f
    check-cast p1, Lcom/airbnb/android/interfaces/EditProfileInterface;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mCallback:Lcom/airbnb/android/interfaces/EditProfileInterface;

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/EditProfileFragment;->setHasOptionsMenu(Z)V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 386
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 387
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/AirFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 388
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 114
    const v2, 0x7f03008c

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/activities/AirActivity;

    const v3, 0x7f0e0752

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 117
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    .line 121
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/fragments/EditProfileFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EditProfileFragment$1;-><init>(Lcom/airbnb/android/fragments/EditProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 134
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    .line 135
    const v2, 0x3f2aaaab

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/AirImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 136
    .local v0, "photoHeight":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/AirImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getPictureUrlLarge()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mUserNameTextView:Lcom/airbnb/android/views/AirTextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mTxtAboutMe:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mBtnEditAboutMe:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/EditProfileFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EditProfileFragment$2;-><init>(Lcom/airbnb/android/fragments/EditProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mBtnEditName:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/EditProfileFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EditProfileFragment$3;-><init>(Lcom/airbnb/android/fragments/EditProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v2, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;-><init>(Z)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    .line 159
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSections:Lcom/airbnb/android/views/LinearListView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSections:Lcom/airbnb/android/views/LinearListView;

    new-instance v3, Lcom/airbnb/android/fragments/EditProfileFragment$4;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EditProfileFragment$4;-><init>(Lcom/airbnb/android/fragments/EditProfileFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 184
    new-instance v2, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    invoke-direct {v2, v5}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;-><init>(Z)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    .line 185
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSections:Lcom/airbnb/android/views/LinearListView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v2, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSections:Lcom/airbnb/android/views/LinearListView;

    new-instance v3, Lcom/airbnb/android/fragments/EditProfileFragment$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/EditProfileFragment$5;-><init>(Lcom/airbnb/android/fragments/EditProfileFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 197
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    .line 392
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    .line 406
    :goto_8
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 394
    :pswitch_d
    const-string/jumbo v0, "click"

    const-string/jumbo v1, "photo"

    invoke-static {v0, v1, v6}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 396
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/CameraHelper;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 397
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e07a5

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0737

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e06da

    const/16 v2, 0x1e2

    const v3, 0x7f0e0738

    const/16 v4, 0x1e1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_8

    .line 402
    :cond_4d
    invoke-direct {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->selectPhoto()V

    goto :goto_8

    .line 392
    nop

    :pswitch_data_52
    .packed-switch 0x7f080535
        :pswitch_d
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 202
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onPause()V

    .line 204
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mScrollValue:I

    .line 205
    return-void
.end method

.method public onProfileUpdated(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V
    .registers 5
    .param p1, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/EditProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 370
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->PRIVATE_DETAILS:Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 371
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->notifyDataSetChanged()V

    .line 382
    :cond_19
    :goto_19
    return-void

    .line 373
    :cond_1a
    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->OPTIONAL_DETAILS:Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 374
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSectionsAdapter:Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/EditProfileDetailsAdapter;->notifyDataSetChanged()V

    goto :goto_19

    .line 376
    :cond_28
    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->About:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    if-ne p1, v1, :cond_36

    .line 377
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mTxtAboutMe:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 379
    :cond_36
    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Name:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    if-ne p1, v1, :cond_19

    .line 380
    iget-object v1, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mUserNameTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method

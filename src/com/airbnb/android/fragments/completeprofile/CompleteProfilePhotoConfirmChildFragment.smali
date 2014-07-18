.class public Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;
.super Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;
.source "CompleteProfilePhotoConfirmChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPhotoPreview:Lcom/airbnb/android/views/HaloImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;
    .registers 2

    .prologue
    .line 24
    new-instance v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;-><init>()V

    .line 25
    .local v1, "f":Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 4

    .prologue
    .line 52
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getReservationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const v1, 0x7f030074

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/HaloImageView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->mPhotoPreview:Lcom/airbnb/android/views/HaloImageView;

    .line 41
    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->mPhotoPreview:Lcom/airbnb/android/views/HaloImageView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/HaloImageView;->setStaticImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->isVerifiedIdFlow()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackPhotoApprovalView(Lcom/airbnb/android/utils/Strap;)V

    .line 47
    :cond_27
    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoConfirmChildFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    return-void
.end method

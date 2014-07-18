.class Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;
.super Ljava/lang/Object;
.source "LastMinuteListingsPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-static {}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLmbEducationClick()V

    .line 85
    const v1, 0x7f0e03f0

    const v2, 0x7f0e03ef

    const v3, 0x104000a

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->newInstance(IIIZ)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v0

    .line 91
    .local v0, "fragment":Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    new-instance v1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2$1;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2$1;-><init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->setSingleButtonDialogListener(Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;)V

    .line 99
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLmbEducationImpression()V

    .line 103
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->mLastMinuteEducation:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenLmbResultsEducation(Landroid/content/Context;)V

    .line 105
    return-void
.end method

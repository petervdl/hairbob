.class Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2$1;
.super Ljava/lang/Object;
.source "LastMinuteListingsPhotoFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;

.field final synthetic val$fragment:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;)V
    .registers 3

    .prologue
    .line 91
    iput-object p1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2$1;->this$1:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2;

    iput-object p2, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2$1;->val$fragment:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickSingleButton()V
    .registers 2

    .prologue
    .line 94
    invoke-static {}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLmbEducationClose()V

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$2$1;->val$fragment:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->dismiss()V

    .line 96
    return-void
.end method

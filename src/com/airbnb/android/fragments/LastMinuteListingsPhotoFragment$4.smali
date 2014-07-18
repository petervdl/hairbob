.class Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$4;
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
    .line 123
    iput-object p1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$4;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$4;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->updateSearchWithCheckIn(Ljava/util/Calendar;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->access$100(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;Ljava/util/Calendar;)V

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLMDateChange(Z)V

    .line 128
    return-void
.end method

.class Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$5;
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
    .line 131
    iput-object p1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$5;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 135
    .local v0, "checkIn":Ljava/util/Calendar;
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 136
    iget-object v1, p0, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment$5;->this$0:Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;

    # invokes: Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->updateSearchWithCheckIn(Ljava/util/Calendar;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;->access$100(Lcom/airbnb/android/fragments/LastMinuteListingsPhotoFragment;Ljava/util/Calendar;)V

    .line 138
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackLMDateChange(Z)V

    .line 139
    return-void
.end method

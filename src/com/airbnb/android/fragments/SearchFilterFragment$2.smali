.class Lcom/airbnb/android/fragments/SearchFilterFragment$2;
.super Ljava/lang/Object;
.source "SearchFilterFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

.field final synthetic val$searchInfo:Lcom/airbnb/android/models/SearchInfo;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFilterFragment;Lcom/airbnb/android/models/SearchInfo;)V
    .registers 3

    .prologue
    .line 128
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$2;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$2;->val$searchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlow()Lcom/airbnb/android/analytics/BookItAnalytics$Flow;
    .registers 2

    .prologue
    .line 147
    sget-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->SEARCH_FILTER:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    return-object v0
.end method

.method public setGuestCount(I)V
    .registers 3
    .param p1, "guestCount"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$2;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    # setter for: Lcom/airbnb/android/fragments/SearchFilterFragment;->mNumGuests:I
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/SearchFilterFragment;->access$402(Lcom/airbnb/android/fragments/SearchFilterFragment;I)I

    .line 143
    return-void
.end method

.method public showCalendarDialog(Lcom/airbnb/android/views/DateAndGuestCountView;)V
    .registers 10
    .param p1, "dateAndGuestCountView"    # Lcom/airbnb/android/views/DateAndGuestCountView;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 132
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "calendar_type"

    const-string/jumbo v3, "search"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 133
    const-string/jumbo v1, "android_eng"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "calendar_action"

    const-string/jumbo v4, "select_dates"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "calendar_type"

    const-string/jumbo v4, "search"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 134
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$2;->val$searchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchInfo;->getCheckinTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$2;->val$searchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v3}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->newInstance(IJJZLjava/lang/String;)Lcom/airbnb/android/fragments/CalendarDialogFragment;

    move-result-object v7

    .line 136
    .local v7, "dialog":Lcom/airbnb/android/fragments/CalendarDialogFragment;
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$2;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    const/16 v1, 0x65

    invoke-virtual {v7, v0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFilterFragment$2;->this$0:Lcom/airbnb/android/fragments/SearchFilterFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SearchFilterFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public showDialogIfClickWithSpecialOffer()V
    .registers 1

    .prologue
    .line 153
    return-void
.end method

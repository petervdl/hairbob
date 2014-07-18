.class Lcom/airbnb/android/fragments/ContactHostFragment$2;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactHostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactHostFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$2;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlow()Lcom/airbnb/android/analytics/BookItAnalytics$Flow;
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->INQUIRY:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    return-object v0
.end method

.method public setGuestCount(I)V
    .registers 3
    .param p1, "guestCount"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$2;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # setter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mGuestCount:I
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$102(Lcom/airbnb/android/fragments/ContactHostFragment;I)I

    .line 177
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$2;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # invokes: Lcom/airbnb/android/fragments/ContactHostFragment;->refreshDatesAndGuestCount()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$200(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    .line 178
    return-void
.end method

.method public showCalendarDialog(Lcom/airbnb/android/views/DateAndGuestCountView;)V
    .registers 11
    .param p1, "dateAndGuestCountView"    # Lcom/airbnb/android/views/DateAndGuestCountView;

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 165
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "calendar_type"

    const-string/jumbo v5, "contact_host"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 166
    const-string/jumbo v3, "android_eng"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "calendar_action"

    const-string/jumbo v6, "select_dates"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "calendar_type"

    const-string/jumbo v6, "contact_host"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 168
    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment$2;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$000(Lcom/airbnb/android/fragments/ContactHostFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getMinNights()I

    move-result v5

    iget-object v3, p0, Lcom/airbnb/android/fragments/ContactHostFragment$2;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$000(Lcom/airbnb/android/fragments/ContactHostFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v6

    move-wide v3, v1

    invoke-static/range {v0 .. v7}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->newInstanceForListing(IJJIJ)Lcom/airbnb/android/fragments/CalendarDialogFragment;

    move-result-object v8

    .line 169
    .local v8, "dialog":Lcom/airbnb/android/fragments/CalendarDialogFragment;
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$2;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    const/16 v1, 0x65

    invoke-virtual {v8, v0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 170
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$2;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public showDialogIfClickWithSpecialOffer()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method

.class Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;
.super Ljava/lang/Object;
.source "SendSpecialOfferFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlow()Lcom/airbnb/android/analytics/BookItAnalytics$Flow;
    .registers 2

    .prologue
    .line 207
    sget-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->SEARCH_FILTER:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    return-object v0
.end method

.method public setGuestCount(I)V
    .registers 3
    .param p1, "guestCount"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # setter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mGuestCount:I
    invoke-static {v0, p1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$402(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;I)I

    .line 203
    return-void
.end method

.method public showCalendarDialog(Lcom/airbnb/android/views/DateAndGuestCountView;)V
    .registers 11
    .param p1, "dateAndGuestCountView"    # Lcom/airbnb/android/views/DateAndGuestCountView;

    .prologue
    const-wide/16 v3, -0x1

    .line 191
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$100(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckInDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$100(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    :goto_15
    iget-object v5, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;
    invoke-static {v5}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$200(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_27

    iget-object v3, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mCheckOutDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$200(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    :cond_27
    iget-object v5, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v5}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$300(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getMinNights()I

    move-result v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    # getter for: Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v6}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->access$300(Lcom/airbnb/android/fragments/SendSpecialOfferFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->newInstanceForListing(IJJIJ)Lcom/airbnb/android/fragments/CalendarDialogFragment;

    move-result-object v8

    .line 195
    .local v8, "dialog":Lcom/airbnb/android/fragments/CalendarDialogFragment;
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    const/16 v1, 0x65

    invoke-virtual {v8, v0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 196
    iget-object v0, p0, Lcom/airbnb/android/fragments/SendSpecialOfferFragment$2;->this$0:Lcom/airbnb/android/fragments/SendSpecialOfferFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SendSpecialOfferFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 198
    return-void

    .end local v8    # "dialog":Lcom/airbnb/android/fragments/CalendarDialogFragment;
    :cond_51
    move-wide v1, v3

    .line 191
    goto :goto_15
.end method

.method public showDialogIfClickWithSpecialOffer()V
    .registers 1

    .prologue
    .line 213
    return-void
.end method

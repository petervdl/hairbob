.class Lcom/airbnb/android/fragments/SearchListingsPhotoFragment$1;
.super Ljava/lang/Object;
.source "SearchListingsPhotoFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->setupListViewHeaderFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;

.field final synthetic val$searchInfo:Lcom/airbnb/android/models/SearchInfo;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;Lcom/airbnb/android/models/SearchInfo;)V
    .registers 3

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment$1;->val$searchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlow()Lcom/airbnb/android/analytics/BookItAnalytics$Flow;
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->SEARCH_FILTER:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    return-object v0
.end method

.method public setGuestCount(I)V
    .registers 2
    .param p1, "guestCount"    # I

    .prologue
    .line 73
    return-void
.end method

.method public showCalendarDialog(Lcom/airbnb/android/views/DateAndGuestCountView;)V
    .registers 10
    .param p1, "dateAndGuestCountView"    # Lcom/airbnb/android/views/DateAndGuestCountView;

    .prologue
    const/4 v6, 0x0

    .line 65
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment$1;->val$searchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchInfo;->getCheckinTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment$1;->val$searchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v3}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->newInstance(IJJZLjava/lang/String;)Lcom/airbnb/android/fragments/CalendarDialogFragment;

    move-result-object v7

    .line 67
    .local v7, "dialog":Lcom/airbnb/android/fragments/CalendarDialogFragment;
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;

    const/16 v1, 0x65

    invoke-virtual {v7, v0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment$1;->this$0:Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SearchListingsPhotoFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public showDialogIfClickWithSpecialOffer()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

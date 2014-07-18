.class Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/CalendarRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$15;

.field final synthetic val$loadingCalendarDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment$15;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 3

    .prologue
    .line 694
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$15;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->val$loadingCalendarDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->val$loadingCalendarDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 708
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$15;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 709
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CalendarRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/CalendarRequest;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->val$loadingCalendarDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 699
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$15;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/CalendarRequest;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    # setter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mCalendarMap:Lcom/airbnb/android/models/SquareMap;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1302(Lcom/airbnb/android/fragments/ListingDetailsFragment;Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/models/SquareMap;

    .line 700
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$15;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 701
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$15;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ListingDetailsFragment;->mCalendarMap:Lcom/airbnb/android/models/SquareMap;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1300(Lcom/airbnb/android/fragments/ListingDetailsFragment;)Lcom/airbnb/android/models/SquareMap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->newInstance(Lcom/airbnb/android/models/SquareMap;)Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->this$1:Lcom/airbnb/android/fragments/ListingDetailsFragment$15;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ListingDetailsFragment$15;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 703
    :cond_30
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 694
    check-cast p1, Lcom/airbnb/android/requests/CalendarRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$15$1;->onResponse(Lcom/airbnb/android/requests/CalendarRequest;)V

    return-void
.end method

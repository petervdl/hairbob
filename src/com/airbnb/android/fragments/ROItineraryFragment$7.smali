.class Lcom/airbnb/android/fragments/ROItineraryFragment$7;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->setupReservation(Lcom/airbnb/android/models/Reservation;Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V
    .registers 2

    .prologue
    .line 294
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$7;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$7;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e00ab

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 313
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/CalendarRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/CalendarRequest;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$7;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 308
    :cond_8
    :goto_8
    return-void

    .line 301
    :cond_9
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$7;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, p1, Lcom/airbnb/android/requests/CalendarRequest;->mSquaresMap:Lcom/airbnb/android/models/SquareMap;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$7;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/adapters/HighlightCalendarFragment;->newInstance(Lcom/airbnb/android/models/SquareMap;Lcom/airbnb/android/interfaces/Reservationable;)Lcom/airbnb/android/adapters/HighlightCalendarFragment;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mCalendar:Lcom/airbnb/android/fragments/SquareCalendarFragment;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$102(Lcom/airbnb/android/fragments/ROItineraryFragment;Lcom/airbnb/android/fragments/SquareCalendarFragment;)Lcom/airbnb/android/fragments/SquareCalendarFragment;

    .line 302
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$7;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_8

    .line 303
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$7;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080486

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$7;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mCalendar:Lcom/airbnb/android/fragments/SquareCalendarFragment;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$100(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/fragments/SquareCalendarFragment;

    move-result-object v2

    const-class v3, Lcom/airbnb/android/fragments/SquareCalendarFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_8
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 294
    check-cast p1, Lcom/airbnb/android/requests/CalendarRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ROItineraryFragment$7;->onResponse(Lcom/airbnb/android/requests/CalendarRequest;)V

    return-void
.end method

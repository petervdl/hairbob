.class Lcom/airbnb/android/fragments/CalendarDialogFragment$6;
.super Ljava/lang/Object;
.source "CalendarDialogFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CalendarDialogFragment;->fetchUnavailableDates(Z)V
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
        "Lcom/airbnb/android/requests/GetUnavailabilitiesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V
    .registers 2

    .prologue
    .line 486
    iput-object p1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 514
    iget-object v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    const/4 v2, 0x0

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->displayLoaderFrame(Z)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$1400(Lcom/airbnb/android/fragments/CalendarDialogFragment;Z)V

    .line 515
    iget-object v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 516
    invoke-static {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e01ac

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    const v3, 0x7f0e01bc

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_2c
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    const v2, 0x7f0e0563

    const/16 v3, 0x66

    iget-object v4, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog_error"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 521
    :cond_4b
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetUnavailabilitiesRequest;)V
    .registers 10
    .param p1, "response"    # Lcom/airbnb/android/requests/GetUnavailabilitiesRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v6}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 493
    iget-object v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    const/4 v7, 0x0

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->displayLoaderFrame(Z)V
    invoke-static {v6, v7}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$1400(Lcom/airbnb/android/fragments/CalendarDialogFragment;Z)V

    .line 495
    iget-object v6, p1, Lcom/airbnb/android/requests/GetUnavailabilitiesRequest;->result:Ljava/util/Map;

    const-string/jumbo v7, "unavailabilities"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 496
    .local v3, "unavailabilitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 498
    .local v5, "unavailableDates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 499
    .local v4, "unavailableDate":Ljava/util/Calendar;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    .local v1, "date":Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 501
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 504
    .end local v1    # "date":Ljava/lang/String;
    :cond_45
    iget-object v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # setter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;
    invoke-static {v6, v5}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$1502(Lcom/airbnb/android/fragments/CalendarDialogFragment;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 506
    iget-object v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v6, v6, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v6, v6, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;

    .line 507
    .local v0, "adapter":Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;
    iget-object v6, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mUnavailableDates:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$1500(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->setUnavailableDates(Ljava/util/HashSet;)V

    .line 508
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->notifyDataSetChanged()V

    .line 510
    .end local v0    # "adapter":Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "unavailabilitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "unavailableDate":Ljava/util/Calendar;
    .end local v5    # "unavailableDates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_62
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 486
    check-cast p1, Lcom/airbnb/android/requests/GetUnavailabilitiesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/CalendarDialogFragment$6;->onResponse(Lcom/airbnb/android/requests/GetUnavailabilitiesRequest;)V

    return-void
.end method

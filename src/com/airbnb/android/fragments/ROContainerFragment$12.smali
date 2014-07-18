.class Lcom/airbnb/android/fragments/ROContainerFragment$12;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->fetchReservationById(Z)V
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
        "Lcom/airbnb/android/requests/ReservationObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;)V
    .registers 2

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 8
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 1196
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "error_dialog_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_52

    .line 1197
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e01ba

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/16 v2, 0x2c4

    const v3, 0x7f0e06b3

    const/16 v4, 0x2c5

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "error_dialog_tag"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1201
    :cond_52
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2200(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 1202
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mReload:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2102(Lcom/airbnb/android/fragments/ROContainerFragment;Z)Z

    .line 1203
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ReservationObjectRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/ReservationObjectRequest;

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1185
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {p1}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getMessageThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v2

    invoke-virtual {p1}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/ROContainerFragment;->setReservationObject(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/User;)V

    .line 1186
    invoke-virtual {p1}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getMessageThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getConsolidatedReservationStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    if-ne v0, v1, :cond_36

    .line 1187
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/models/BadgeCount$BadgeType;->HostHome:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->decrementBadge(Lcom/airbnb/android/models/BadgeCount$BadgeType;)V

    .line 1190
    :cond_36
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$12;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mReload:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2102(Lcom/airbnb/android/fragments/ROContainerFragment;Z)Z

    .line 1191
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1180
    check-cast p1, Lcom/airbnb/android/requests/ReservationObjectRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ROContainerFragment$12;->onResponse(Lcom/airbnb/android/requests/ReservationObjectRequest;)V

    return-void
.end method

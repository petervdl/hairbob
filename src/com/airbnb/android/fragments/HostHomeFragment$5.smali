.class Lcom/airbnb/android/fragments/HostHomeFragment$5;
.super Ljava/lang/Object;
.source "HostHomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/HostHomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HostHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/HostHomeFragment;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;
    invoke-static {v7}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$200(Lcom/airbnb/android/fragments/HostHomeFragment;)Lcom/airbnb/android/adapters/SectionedAdapter;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/airbnb/android/adapters/SectionedAdapter;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 295
    :cond_c
    :goto_c
    return-void

    .line 208
    :cond_d
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;
    invoke-static {v7}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$300(Lcom/airbnb/android/fragments/HostHomeFragment;)Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 210
    .local v2, "o":Ljava/lang/Object;
    instance-of v7, v2, Lcom/airbnb/android/models/Reservation;

    if-eqz v7, :cond_2b

    move-object v3, v2

    .line 211
    check-cast v3, Lcom/airbnb/android/models/Reservation;

    .line 212
    .local v3, "reservation":Lcom/airbnb/android/models/Reservation;
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v7, v3}, Lcom/airbnb/android/fragments/HostHomeFragment;->loadReservation(Lcom/airbnb/android/models/Reservation;)V

    .line 213
    invoke-static {}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackConfirmedReservation()V

    goto :goto_c

    .line 214
    .end local v3    # "reservation":Lcom/airbnb/android/models/Reservation;
    :cond_2b
    instance-of v7, v2, Lcom/airbnb/android/models/Alert;

    if-eqz v7, :cond_c

    move-object v0, v2

    .line 215
    check-cast v0, Lcom/airbnb/android/models/Alert;

    .line 216
    .local v0, "alert":Lcom/airbnb/android/models/Alert;
    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getId()I

    move-result v7

    if-lez v7, :cond_44

    .line 218
    new-instance v7, Lcom/airbnb/android/requests/PostAlertViewedRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getId()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/airbnb/android/requests/PostAlertViewedRequest;-><init>(I)V

    invoke-virtual {v7}, Lcom/airbnb/android/requests/PostAlertViewedRequest;->execute()V

    .line 221
    :cond_44
    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->isViewed()Z

    move-result v7

    if-nez v7, :cond_66

    .line 222
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v7}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v7

    sget-object v8, Lcom/airbnb/android/models/BadgeCount$BadgeType;->HostHome:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    invoke-virtual {v7, v8}, Lcom/airbnb/android/AirbnbApi;->decrementBadge(Lcom/airbnb/android/models/BadgeCount$BadgeType;)V

    .line 223
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/airbnb/android/models/Alert;->setViewed(Z)V

    .line 224
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/HostHomeFragment;->mHostHomeAdapter:Lcom/airbnb/android/adapters/SectionedAdapter;
    invoke-static {v7}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$200(Lcom/airbnb/android/fragments/HostHomeFragment;)Lcom/airbnb/android/adapters/SectionedAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/adapters/SectionedAdapter;->notifyDataSetChanged()V

    .line 227
    :cond_66
    sget-object v7, Lcom/airbnb/android/fragments/HostHomeFragment$7;->$SwitchMap$com$airbnb$android$models$Alert$AlertType:[I

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/Alert$AlertType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_24a

    goto :goto_c

    .line 229
    :pswitch_76
    sget-object v7, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->HOST_HOME:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v7}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 230
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 231
    const-string/jumbo v7, "groups_alerts"

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackPriorityItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 234
    :pswitch_9e
    sget-object v7, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->HOST_HOME:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v7}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 235
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getContentId()I

    move-result v9

    invoke-static {v9}, Lcom/airbnb/android/models/groups/GroupsUri;->newContentDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 236
    const-string/jumbo v7, "groups_alerts"

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackPriorityItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 239
    :pswitch_ca
    sget-object v7, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->HOST_HOME:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v7}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 240
    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getGroupId()I

    move-result v7

    invoke-static {v7}, Lcom/airbnb/android/models/groups/GroupsUri;->newGroupHomeUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v6

    .line 241
    .local v6, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/airbnb/android/models/groups/GroupsUri;->setForceBack(Z)V

    .line 242
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/airbnb/android/activities/groups/GroupActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 243
    const-string/jumbo v7, "groups_alerts"

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackPriorityItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 246
    .end local v6    # "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    :pswitch_fa
    sget-object v7, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->HOST_HOME:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v7}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 247
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getEventId()I

    move-result v9

    invoke-static {v9}, Lcom/airbnb/android/models/groups/GroupsUri;->newMeetupDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 248
    const-string/jumbo v7, "groups_alerts"

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackPriorityItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 251
    :pswitch_126
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/android/activities/PayoutActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 252
    const-string/jumbo v7, "hospitality_alerts"

    const-string/jumbo v8, "set_payout"

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackPriorityItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 256
    :pswitch_140
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->intentForUrlAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 257
    const-string/jumbo v7, "hospitality_alerts"

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackPriorityItem(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 260
    :pswitch_164
    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v5

    .line 261
    .local v5, "thread":Lcom/airbnb/android/models/MessageThread;
    sget-object v7, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v5}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v8

    if-ne v7, v8, :cond_188

    invoke-virtual {v5}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckinDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_188

    invoke-virtual {v5}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckoutDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_188

    invoke-virtual {v5}, Lcom/airbnb/android/models/MessageThread;->isResponded()Z

    move-result v7

    if-eqz v7, :cond_19f

    invoke-virtual {v5}, Lcom/airbnb/android/models/MessageThread;->isUnread()Z

    move-result v7

    if-eqz v7, :cond_19f

    :cond_188
    const/4 v1, 0x1

    .line 265
    .local v1, "inquiryMessage":Z
    :goto_189
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    # invokes: Lcom/airbnb/android/fragments/HostHomeFragment;->loadInquiry(Lcom/airbnb/android/models/MessageThread;)V
    invoke-static {v7, v5}, Lcom/airbnb/android/fragments/HostHomeFragment;->access$400(Lcom/airbnb/android/fragments/HostHomeFragment;Lcom/airbnb/android/models/MessageThread;)V

    .line 266
    const-string/jumbo v8, "core_alerts"

    if-eqz v1, :cond_1a1

    const-string/jumbo v7, "inquiry_message"

    :goto_196
    invoke-virtual {v5}, Lcom/airbnb/android/models/MessageThread;->getId()J

    move-result-wide v9

    invoke-static {v8, v7, v9, v10}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackPriorityItemWithId(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 261
    .end local v1    # "inquiryMessage":Z
    :cond_19f
    const/4 v1, 0x0

    goto :goto_189

    .line 266
    .restart local v1    # "inquiryMessage":Z
    :cond_1a1
    const-string/jumbo v7, "inquiry"

    goto :goto_196

    .line 270
    .end local v1    # "inquiryMessage":Z
    .end local v5    # "thread":Lcom/airbnb/android/models/MessageThread;
    :pswitch_1a5
    sget-object v7, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v8

    if-ne v7, v8, :cond_1d9

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/models/MessageThread;->isResponded()Z

    move-result v7

    if-eqz v7, :cond_1d9

    const/4 v4, 0x1

    .line 271
    .local v4, "rrMessage":Z
    :goto_1bc
    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v3

    .line 272
    .restart local v3    # "reservation":Lcom/airbnb/android/models/Reservation;
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v7, v3}, Lcom/airbnb/android/fragments/HostHomeFragment;->loadReservation(Lcom/airbnb/android/models/Reservation;)V

    .line 273
    const-string/jumbo v10, "core_alerts"

    if-eqz v4, :cond_1db

    const-string/jumbo v7, "rr_message"

    move-object v9, v7

    :goto_1ce
    if-eqz v3, :cond_1e0

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v7

    :goto_1d4
    invoke-static {v10, v9, v7, v8}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackPriorityItemWithId(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_c

    .line 270
    .end local v3    # "reservation":Lcom/airbnb/android/models/Reservation;
    .end local v4    # "rrMessage":Z
    :cond_1d9
    const/4 v4, 0x0

    goto :goto_1bc

    .line 273
    .restart local v3    # "reservation":Lcom/airbnb/android/models/Reservation;
    .restart local v4    # "rrMessage":Z
    :cond_1db
    const-string/jumbo v7, "reservation_request"

    move-object v9, v7

    goto :goto_1ce

    :cond_1e0
    const-wide/16 v7, -0x1

    goto :goto_1d4

    .line 277
    .end local v3    # "reservation":Lcom/airbnb/android/models/Reservation;
    .end local v4    # "rrMessage":Z
    :pswitch_1e3
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getReview()Lcom/airbnb/android/models/Review;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 280
    :pswitch_1f8
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v7}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeInstantBookFtue(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_223

    .line 281
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v7}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markInstantBookFtueAsSeen(Landroid/content/Context;)V

    .line 282
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getObjectId()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v8, v9, v10}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->intentForDefault(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 285
    :cond_223
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getObjectId()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v8, v9, v10}, Lcom/airbnb/android/activities/ManageListingActivity;->intentForIBSell(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 289
    :pswitch_239
    iget-object v7, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/HostHomeFragment$5;->this$0:Lcom/airbnb/android/fragments/HostHomeFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/android/activities/MainActivity;->intentForListings(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/android/fragments/HostHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 227
    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_76
        :pswitch_9e
        :pswitch_ca
        :pswitch_fa
        :pswitch_126
        :pswitch_140
        :pswitch_140
        :pswitch_164
        :pswitch_1a5
        :pswitch_1e3
        :pswitch_1f8
        :pswitch_239
    .end packed-switch
.end method

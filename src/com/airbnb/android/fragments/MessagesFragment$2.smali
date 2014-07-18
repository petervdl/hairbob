.class Lcom/airbnb/android/fragments/MessagesFragment$2;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/MessagesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/MessagesFragment;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/airbnb/android/fragments/MessagesFragment$2;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 140
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/MessagesFragment$2;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    # getter for: Lcom/airbnb/android/fragments/MessagesFragment;->mLoaderListView:Lcom/airbnb/android/views/SwipeRefreshLoaderListView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/MessagesFragment;->access$100(Lcom/airbnb/android/fragments/MessagesFragment;)Lcom/airbnb/android/views/SwipeRefreshLoaderListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/SwipeRefreshLoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/TravelInboxItem;

    .line 142
    .local v0, "item":Lcom/airbnb/android/interfaces/TravelInboxItem;
    sget-object v2, Lcom/airbnb/android/fragments/MessagesFragment$4;->$SwitchMap$com$airbnb$android$interfaces$TravelInboxItem$Type:[I

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getType()Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5a

    .line 155
    .end local v0    # "item":Lcom/airbnb/android/interfaces/TravelInboxItem;
    :goto_23
    return-void

    .line 144
    .restart local v0    # "item":Lcom/airbnb/android/interfaces/TravelInboxItem;
    :pswitch_24
    iget-object v2, p0, Lcom/airbnb/android/fragments/MessagesFragment$2;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v0, Lcom/airbnb/android/models/Alert;

    .end local v0    # "item":Lcom/airbnb/android/interfaces/TravelInboxItem;
    invoke-virtual {v0}, Lcom/airbnb/android/models/Alert;->getReview()Lcom/airbnb/android/models/Review;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/MessagesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_23

    .restart local v0    # "item":Lcom/airbnb/android/interfaces/TravelInboxItem;
    :pswitch_38
    move-object v1, v0

    .line 147
    check-cast v1, Lcom/airbnb/android/models/MessageThread;

    .line 148
    .local v1, "message":Lcom/airbnb/android/models/MessageThread;
    invoke-virtual {v1}, Lcom/airbnb/android/models/MessageThread;->isUnread()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 149
    iget-object v2, p0, Lcom/airbnb/android/fragments/MessagesFragment$2;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/models/BadgeCount$BadgeType;->HostHome:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/AirbnbApi;->decrementBadge(Lcom/airbnb/android/models/BadgeCount$BadgeType;)V

    .line 151
    :cond_50
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/MessageThread;->setUnread(Z)V

    .line 152
    iget-object v2, p0, Lcom/airbnb/android/fragments/MessagesFragment$2;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/fragments/MessagesFragment;->startMessageThreadActivity(Lcom/airbnb/android/models/MessageThread;)V

    goto :goto_23

    .line 142
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_38
    .end packed-switch
.end method

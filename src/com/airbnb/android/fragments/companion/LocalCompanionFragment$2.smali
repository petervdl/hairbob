.class Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;
.super Ljava/lang/Object;
.source "LocalCompanionFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/RichMessagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->setupMessageInputCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageFailure(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 2
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 162
    return-void
.end method

.method public onMessageReceived(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 2
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 157
    return-void
.end method

.method public onMessageSent(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 8
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 127
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;
    invoke-static {v2}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$200(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/airbnb/android/adapters/RichMessageAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/airbnb/android/adapters/RichMessageAdapter;->addMessage(Lcom/airbnb/android/interfaces/RichMessage;)V

    .line 128
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessagesListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$200(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/airbnb/android/adapters/RichMessageAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    move-object v1, p1

    .line 130
    check-cast v1, Lcom/airbnb/android/models/messages/RichTextMessage;

    .line 131
    .local v1, "textMessage":Lcom/airbnb/android/models/messages/RichTextMessage;
    new-instance v0, Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mHasOpenThread:Z
    invoke-static {v2}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$300(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Z

    move-result v2

    if-nez v2, :cond_40

    const/4 v2, 0x1

    :goto_28
    invoke-virtual {v1}, Lcom/airbnb/android/models/messages/RichTextMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mCurrentLocation:Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v4}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$400(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;

    invoke-direct {v5, p0, v1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;-><init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;Lcom/airbnb/android/models/messages/RichTextMessage;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;-><init>(ZLjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/requests/RequestListener;)V

    .line 149
    .local v0, "sendMessageRequest":Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 150
    return-void

    .line 131
    .end local v0    # "sendMessageRequest":Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;
    :cond_40
    const/4 v2, 0x0

    goto :goto_28
.end method

.method public toggleLocationTracking(Z)V
    .registers 3
    .param p1, "locationEnabled"    # Z

    .prologue
    .line 166
    if-eqz p1, :cond_c

    .line 167
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$500(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/airbnb/android/utils/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->connectLocationClient()V

    .line 171
    :goto_b
    return-void

    .line 169
    :cond_c
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$500(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/airbnb/android/utils/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->disconnectLocationClient()V

    goto :goto_b
.end method

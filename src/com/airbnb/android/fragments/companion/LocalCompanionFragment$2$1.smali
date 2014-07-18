.class Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;
.super Ljava/lang/Object;
.source "LocalCompanionFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->onMessageSent(Lcom/airbnb/android/interfaces/RichMessage;)V
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
        "Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;

.field final synthetic val$textMessage:Lcom/airbnb/android/models/messages/RichTextMessage;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;Lcom/airbnb/android/models/messages/RichTextMessage;)V
    .registers 3

    .prologue
    .line 131
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->this$1:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;

    iput-object p2, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->val$textMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->val$textMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->FAILED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/messages/RichTextMessage;->setSentStatus(Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V

    .line 136
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->this$1:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$200(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/airbnb/android/adapters/RichMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->val$textMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/RichMessageAdapter;->removeMessage(Lcom/airbnb/android/interfaces/RichMessage;)V

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->this$1:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageInput:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->val$textMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v1}, Lcom/airbnb/android/models/messages/RichTextMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->setInputText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->this$1:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->val$textMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->RECEIVED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/messages/RichTextMessage;->setSentStatus(Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V

    .line 146
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->this$1:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mMessageAdapter:Lcom/airbnb/android/adapters/RichMessageAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$200(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/airbnb/android/adapters/RichMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/RichMessageAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$2$1;->onResponse(Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;)V

    return-void
.end method

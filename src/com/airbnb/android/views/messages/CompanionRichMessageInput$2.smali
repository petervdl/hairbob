.class Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;
.super Ljava/lang/Object;
.source "CompanionRichMessageInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->setupSendButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    iget-object v1, v1, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mEditText:Lcom/airbnb/android/views/AirEditTextView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 70
    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    iget-object v1, v1, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mEditText:Lcom/airbnb/android/views/AirEditTextView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "messageText":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    iget-object v1, v1, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mEditText:Lcom/airbnb/android/views/AirEditTextView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 72
    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    # getter for: Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mRichMessagesCallback:Lcom/airbnb/android/interfaces/RichMessagesCallback;
    invoke-static {v1}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->access$100(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)Lcom/airbnb/android/interfaces/RichMessagesCallback;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 73
    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    # getter for: Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mRichMessagesCallback:Lcom/airbnb/android/interfaces/RichMessagesCallback;
    invoke-static {v1}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->access$100(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)Lcom/airbnb/android/interfaces/RichMessagesCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    # invokes: Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->createTransientRichTextMessage(Ljava/lang/String;)Lcom/airbnb/android/models/messages/RichTextMessage;
    invoke-static {v2, v0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->access$200(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;Ljava/lang/String;)Lcom/airbnb/android/models/messages/RichTextMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/RichMessagesCallback;->onMessageSent(Lcom/airbnb/android/interfaces/RichMessage;)V

    .line 76
    .end local v0    # "messageText":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.class Lcom/airbnb/android/views/messages/CompanionRichMessageInput$3;
.super Ljava/lang/Object;
.source "CompanionRichMessageInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->setupEditTextListener()V
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
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$3;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 93
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$3;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    iget-object v1, v0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mSendButton:Lcom/airbnb/android/views/AirTextView;

    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$3;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    invoke-virtual {v0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$3;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    iget-object v0, v0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mEditText:Lcom/airbnb/android/views/AirEditTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x7f0a0016

    :goto_1b
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/AirTextView;->setTextColor(I)V

    .line 89
    return-void

    .line 88
    :cond_23
    const v0, 0x7f0a002b

    goto :goto_1b
.end method

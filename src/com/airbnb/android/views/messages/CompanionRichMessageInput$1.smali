.class Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;
.super Ljava/lang/Object;
.source "CompanionRichMessageInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->setupLocationButton()V
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
    .line 53
    iput-object p1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    # getter for: Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mLocationEnabled:Z
    invoke-static {v0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->access$000(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_b
    # setter for: Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mLocationEnabled:Z
    invoke-static {v1, v0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->access$002(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;Z)Z

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    # getter for: Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mRichMessagesCallback:Lcom/airbnb/android/interfaces/RichMessagesCallback;
    invoke-static {v0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->access$100(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)Lcom/airbnb/android/interfaces/RichMessagesCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    # getter for: Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mLocationEnabled:Z
    invoke-static {v1}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->access$000(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/RichMessagesCallback;->toggleLocationTracking(Z)V

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    iget-object v1, v0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mLocationButton:Lcom/airbnb/android/views/ColorizedIconView;

    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;->this$0:Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    # getter for: Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mLocationEnabled:Z
    invoke-static {v0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->access$000(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)Z

    move-result v0

    if-eqz v0, :cond_32

    const v0, 0x7f0a002b

    :goto_2c
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/ColorizedIconView;->setColor(I)V

    .line 61
    return-void

    .line 56
    :cond_30
    const/4 v0, 0x0

    goto :goto_b

    .line 60
    :cond_32
    const v0, 0x7f0a0014

    goto :goto_2c
.end method

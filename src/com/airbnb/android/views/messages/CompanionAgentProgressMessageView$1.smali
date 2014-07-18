.class Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView$1;
.super Ljava/lang/Object;
.source "CompanionAgentProgressMessageView.java"

# interfaces
.implements Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->populate(Lcom/airbnb/android/interfaces/RichMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView$1;->this$0:Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLink(I)V
    .registers 6
    .param p1, "linkIndex"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView$1;->this$0:Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView$1;->this$0:Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView$1;->this$0:Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;

    # getter for: Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;
    invoke-static {v2}, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->access$000(Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;)Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;->getAgent()Lcom/airbnb/android/models/User;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView$1;->this$0:Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;

    # getter for: Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;
    invoke-static {v3}, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->access$000(Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;)Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;->getAboutMe()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/CompanionProfileActivity;->intentForCompanion(Landroid/content/Context;Lcom/airbnb/android/models/User;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

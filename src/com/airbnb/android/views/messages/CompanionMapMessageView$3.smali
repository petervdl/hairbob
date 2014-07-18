.class Lcom/airbnb/android/views/messages/CompanionMapMessageView$3;
.super Ljava/lang/Object;
.source "CompanionMapMessageView.java"

# interfaces
.implements Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/messages/CompanionMapMessageView;->setupAgentProfileLinks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/messages/CompanionMapMessageView;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$3;->this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLink(I)V
    .registers 6
    .param p1, "linkIndex"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$3;->this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$3;->this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$3;->this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    # getter for: Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;
    invoke-static {v2}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->access$000(Lcom/airbnb/android/views/messages/CompanionMapMessageView;)Lcom/airbnb/android/models/messages/CompanionMapMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$3;->this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    # getter for: Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;
    invoke-static {v3}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->access$000(Lcom/airbnb/android/views/messages/CompanionMapMessageView;)Lcom/airbnb/android/models/messages/CompanionMapMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getAgentBio()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/CompanionProfileActivity;->intentForCompanion(Landroid/content/Context;Lcom/airbnb/android/models/User;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

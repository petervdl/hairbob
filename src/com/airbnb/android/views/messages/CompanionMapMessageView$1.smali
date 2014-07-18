.class Lcom/airbnb/android/views/messages/CompanionMapMessageView$1;
.super Ljava/lang/Object;
.source "CompanionMapMessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/messages/CompanionMapMessageView;->populateRecommendations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;

.field final synthetic val$place:Lcom/airbnb/android/models/localcompanion/CompanionPlace;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/messages/CompanionMapMessageView;Lcom/airbnb/android/models/localcompanion/CompanionPlace;)V
    .registers 3

    .prologue
    .line 119
    iput-object p1, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$1;->this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    iput-object p2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$1;->val$place:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$1;->this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$1;->this$0:Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView$1;->val$place:Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    invoke-static {v3}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->bundleWithCompanionPlace(Lcom/airbnb/android/models/localcompanion/CompanionPlace;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/AutoAirActivity;->intentForFragment(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

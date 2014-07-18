.class Lcom/airbnb/android/fragments/SlidingMenuFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SlidingMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/SlidingMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$1;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$1;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # invokes: Lcom/airbnb/android/fragments/SlidingMenuFragment;->updateSignInItem()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$000(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    .line 98
    return-void
.end method

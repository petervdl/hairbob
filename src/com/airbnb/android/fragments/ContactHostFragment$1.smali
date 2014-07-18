.class Lcom/airbnb/android/fragments/ContactHostFragment$1;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactHostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactHostFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$1;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 148
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$1;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->isCannedMessagesHidden()Z

    move-result v0

    if-nez v0, :cond_13

    .line 150
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$1;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->toggleCannedMessages()Z

    .line 152
    :cond_13
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/airbnb/android/analytics/BookItAnalytics;->trackInquiryMessageClick(Lcom/airbnb/android/utils/Strap;)V

    .line 154
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

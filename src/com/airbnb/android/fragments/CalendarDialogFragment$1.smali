.class Lcom/airbnb/android/fragments/CalendarDialogFragment$1;
.super Ljava/lang/Object;
.source "CalendarDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CalendarDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 169
    iget-object v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$100(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 170
    .local v1, "width":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$100(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 171
    .local v0, "height":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/CalendarDialogFragment;->mLoadingOverlay:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v2}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$100(Lcom/airbnb/android/fragments/CalendarDialogFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/LoaderFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-void
.end method

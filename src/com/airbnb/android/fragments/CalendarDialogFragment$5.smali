.class Lcom/airbnb/android/fragments/CalendarDialogFragment$5;
.super Ljava/lang/Object;
.source "CalendarDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 338
    iput-object p1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 341
    const-string/jumbo v0, "skip_click"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackDateStepAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 342
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$5;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->onApplyOrSkipClick(Z)V

    .line 343
    return-void
.end method

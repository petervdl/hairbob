.class Lcom/airbnb/android/fragments/CalendarDialogFragment$2$1;
.super Ljava/lang/Object;
.source "CalendarDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/CalendarDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CalendarDialogFragment$2;)V
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CalendarDialogFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CalendarDialogFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0e06a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CalendarDialogFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment;->mCalendarHolder:Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;

    iget-object v0, v0, Lcom/airbnb/android/fragments/CalendarDialogFragment$CalendarHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$2$1;->this$1:Lcom/airbnb/android/fragments/CalendarDialogFragment$2;

    iget-object v1, v1, Lcom/airbnb/android/fragments/CalendarDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    return-void
.end method

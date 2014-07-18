.class Lcom/airbnb/android/fragments/CalendarDialogFragment$4;
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
    .line 291
    iput-object p1, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/airbnb/android/fragments/CalendarDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/CalendarDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/CalendarDialogFragment;->onNextMonthClick()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/CalendarDialogFragment;->access$1300(Lcom/airbnb/android/fragments/CalendarDialogFragment;)V

    .line 296
    return-void
.end method

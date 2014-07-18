.class Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$2;
.super Ljava/lang/Object;
.source "HostAvailabilityCalendarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;

    # invokes: Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->onNextMonthClick()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;->access$200(Lcom/airbnb/android/fragments/HostAvailabilityCalendarFragment;)V

    .line 84
    return-void
.end method

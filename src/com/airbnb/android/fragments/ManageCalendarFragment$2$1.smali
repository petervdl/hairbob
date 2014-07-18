.class Lcom/airbnb/android/fragments/ManageCalendarFragment$2$1;
.super Ljava/lang/Object;
.source "ManageCalendarFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ManageCalendarFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ManageCalendarFragment$2;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ManageCalendarFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ManageCalendarFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ManageCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/ManageCalendarFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ManageCalendarFragment;->clearSelectedReservationId()V

    .line 165
    return-void
.end method

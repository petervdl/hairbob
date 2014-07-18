.class Lcom/airbnb/android/fragments/SquareCalendarFragment$2;
.super Ljava/lang/Object;
.source "SquareCalendarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SquareCalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SquareCalendarFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SquareCalendarFragment;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/SquareCalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/fragments/SquareCalendarFragment$2;->this$0:Lcom/airbnb/android/fragments/SquareCalendarFragment;

    # invokes: Lcom/airbnb/android/fragments/SquareCalendarFragment;->onNextMonthClick()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/SquareCalendarFragment;->access$100(Lcom/airbnb/android/fragments/SquareCalendarFragment;)V

    .line 76
    return-void
.end method

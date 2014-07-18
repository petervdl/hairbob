.class Lcom/airbnb/android/views/DateAndGuestCountView$2;
.super Ljava/lang/Object;
.source "DateAndGuestCountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/DateAndGuestCountView;->init(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;IILjava/util/Calendar;Ljava/util/Calendar;Lcom/airbnb/android/models/SpecialOffer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/DateAndGuestCountView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/DateAndGuestCountView;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/views/DateAndGuestCountView$2;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView$2;->this$0:Lcom/airbnb/android/views/DateAndGuestCountView;

    # getter for: Lcom/airbnb/android/views/DateAndGuestCountView;->mViewer:Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;
    invoke-static {v0}, Lcom/airbnb/android/views/DateAndGuestCountView;->access$000(Lcom/airbnb/android/views/DateAndGuestCountView;)Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;->showDialogIfClickWithSpecialOffer()V

    .line 104
    return-void
.end method

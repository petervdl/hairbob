.class Lcom/airbnb/android/adapters/CurrencyAdapter$1;
.super Ljava/lang/Object;
.source "CurrencyAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/CurrencyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/CurrencyAdapter;

.field final synthetic val$holder:Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/CurrencyAdapter;Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;)V
    .registers 3

    .prologue
    .line 49
    iput-object p1, p0, Lcom/airbnb/android/adapters/CurrencyAdapter$1;->this$0:Lcom/airbnb/android/adapters/CurrencyAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/CurrencyAdapter$1;->val$holder:Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/adapters/CurrencyAdapter$1;->val$holder:Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;

    iget-object v0, v0, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    const/4 v0, 0x0

    return v0
.end method

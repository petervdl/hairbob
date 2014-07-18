.class Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CurrencyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/CurrencyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field name:Landroid/widget/TextView;

.field radioButton:Landroid/widget/RadioButton;

.field symbol:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/airbnb/android/adapters/CurrencyAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/CurrencyAdapter;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/adapters/CurrencyAdapter$ViewHolder;->this$0:Lcom/airbnb/android/adapters/CurrencyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

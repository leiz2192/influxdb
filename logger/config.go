package logger

import (
	"go.uber.org/zap/zapcore"

	"github.com/influxdata/influxdb/toml"
)

// Config represents the configuration for creating a zap.Logger.
type Config struct {
	FileName     string        `toml:"file-name"`
	Format       string        `toml:"format"`
	MaxSize      toml.Size     `toml:"max-size"`
	MaxBackups   int           `toml:"max-backups"`
	Level        zapcore.Level `toml:"level"`
	SuppressLogo bool          `toml:"suppress-logo"`
}

// NewConfig returns a new instance of Config with defaults.
func NewConfig() Config {
	return Config{
		FileName:   "./influxdb.log",
		Format:     "json",
		MaxBackups: 7,
		Level:      zapcore.InfoLevel,
	}
}
